"use strict";
var webassembly = exports;

if (typeof window !== "undefined" && window)
    window.webassembly = webassembly;

var getOwnPropertyNames = Object.getOwnPropertyNames;

/**
 * Options as used by {@link load}.
 * @interface LoadOptions
 * @property {number} [initialMemory=1] Initial memory in pages of 64k
 * @property {number} [maximumMemory] Maximum memory in pages of 64k
 * @property {Object.<string,*>} [imports] Imports
 */

/**
 * Instantiated module as returned by {@link load},
 * @interface IModule
 * @property {Object.<string,*>} env Environment
 * @property {Object.<string,*>} exports Exports
 */

/**
 * Loads an assembly.
 * @param {string} file File name (.wasm)
 * @param {LoadOptions} [options] Options
 * @returns {Promise.<IModule>} Promise resolving to the instantiated module
 */
function load(file, options) {

    if (!options)
        options = {};

    // Initialize memory

    var opts = { initial: options.initialMemory || 1 };
    if (options.maximumMemory)
        opts.maximum = options.maximumMemory;
    var memory = new WebAssembly.Memory(opts);

    grow();

    // Add utilty to memory

    function getInt(ptr) {
        return memory.S32[ptr >> 2];
    }

    memory.getInt = getInt;

    function getUint(ptr) {
        return memory.U32[ptr >> 2];
    }

    memory.getUint = getUint;

    function getFloat(ptr) {
        return memory.F32[ptr >> 2];
    }

    memory.getFloat = getFloat;

    function getDouble(ptr) {
        return memory.F64[ptr >> 3];
    }

    memory.getDouble = getDouble;

    function getString(ptr) {
        var start = (ptr >>>= 0);
        while (memory.U8[ptr++]);
        getString.bytes = ptr - start;
        return String.fromCharCode.apply(null, memory.U8.subarray(start, ptr - 1));
    }

    memory.getString = getString;

    // Initialize environment

    var env = {};

    env.memory = memory;

    function abort() {
        throw Error("out of memory in " + file);
    }

    env._abort = abort;

    function grow() {
        var buf = memory.buffer;
        memory.U8  = new Uint8Array  (buf);
        memory.S32 = new Int32Array  (buf);
        memory.U32 = new Uint32Array (buf);
        memory.F32 = new Float32Array(buf);
        memory.F64 = new Float64Array(buf);
    }

    env._grow = grow;

    // Add console to environment

    getOwnPropertyNames(console).forEach(function(key) {
        if (typeof console[key] === "function")
            env["console_" + key] = function(ptr, base) {
                var s = getString(ptr);
                if (base)
                    s = s.replace(/%([dfisu])/g, function($0, $1) {
                        var value;
                        switch ($1) {
                            case "d":
                                value = getDouble(base);
                                base += 4;
                                break;
                            case "f":
                                value = getFloat(base);
                                break;
                            case "i":
                                value = getInt(base);
                                break;
                            case "s":
                                value = getString(getUint(base));
                                break;
                            case "u":
                                value = getUint(base);
                                break;
                        }
                        base += 4;
                        return value;
                    });
                return console[key](s);
            };
    });

    // Add Math to environment

    getOwnPropertyNames(Math).forEach(function(key) {
        if (typeof Math[key] === "function")
            env["Math_" + key] = function() {
                var args = new Array(arguments.length),
                    index = 0;
                while (index < args.length)
                    args[index] = arguments[index++];
                return Math[key].apply(Math, args);
            }
    });

    // Add imports to environment

    if (options.imports)
        for (var i = 0, ks = Object.keys(options.imports); i < ks.length; ++i)
            env[ks[i]] = options.imports[ks[i]];

    // Fetch the assembly and instantiate it

    return (typeof fetch === "function" ? fetch : fetch_node)(file)
        .then(function(result) { return result.arrayBuffer() })
        .then(function(buffer) { return WebAssembly.instantiate(buffer, { env: env }) })
        .then(function(module) {
            var cexports = module.instance.exports,
                exports = {};
            for (var i = 0, ks = getOwnPropertyNames(cexports); i < ks.length; )
                exports[ks[i]] = cexports[ks[i++]];
            return {
                env: env,
                exports: exports
            };
        });
}

webassembly.load = load;

var fs = require("@protobufjs/inquire")("fs");

// internal
function fetch_node(file) {
    return new Promise(function(resolve, reject) {
        fs.readFile(file, function(err, data) {
            if (err)
                reject(err);
            else
                resolve({
                    arrayBuffer: function() {
                        return data;
                    }
                });
        });
    });
}
