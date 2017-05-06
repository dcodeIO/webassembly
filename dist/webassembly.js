(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
"use strict";
module.exports = inquire;

/**
 * Requires a module only if available.
 * @memberof util
 * @param {string} moduleName Module to require
 * @returns {?Object} Required module if available and not empty, otherwise `null`
 */
function inquire(moduleName) {
    try {
        var mod = eval("quire".replace(/^/,"re"))(moduleName); // eslint-disable-line no-eval
        if (mod && (mod.length || Object.keys(mod).length))
            return mod;
    } catch (e) {} // eslint-disable-line no-empty
    return null;
}

},{}],2:[function(require,module,exports){
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

    var imports = options.imports || {};

    // Initialize memory

    var memory = imports.memory;
    if (!memory) {
        var opts = { initial: options.initialMemory || 1 };
        if (options.maximumMemory)
            opts.maximum = options.maximumMemory;
        memory = new WebAssembly.Memory(opts);
    }

    var table = imports.table;
    if (!table)
        table = new WebAssembly.Table({ initial: 0, element: "anyfunc" });

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

    env.memoryBase = imports.memoryBase || 0;
    env.tableBase = imports.tableBase || 0;

    env.memory = memory;
    env.table = table;

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
        if (typeof console[key] === "function") // eslint-disable-line no-console
            env["console_" + key] = function(ptr, base) {
                var s = getString(ptr);
                if (base)
                    s = s.replace(/%(d|i|u|f|lf|s)/g, function($0, $1) {
                        var value;
                        switch ($1) {
                            default:
                                value = getInt(base);
                                base += 4;
                                break;
                            case "u":
                                value = getUint(base);
                                base += 4;
                                break;
                            case "f":
                                value = getFloat(base);
                                base += 4;
                                break;
                            case "lf":
                                value = getDouble(base);
                                base += 8;
                                break;
                            case "s":
                                value = getString(getUint(base));
                                base += 4;
                                break;
                        }
                        return value;
                    });
                return console[key](s); // eslint-disable-line no-console
            };
    });

    // Add Math to environment

    getOwnPropertyNames(Math).forEach(function(key) {
        if (typeof Math[key] === "function")
            env["Math_" + key] = Math[key];
    });

    // Add imports to environment

    for (var i = 0, ks = Object.keys(imports); i < ks.length; ++i)
        env[ks[i]] = imports[ks[i]];

    // Fetch the assembly and instantiate it

    return (typeof fetch === "function" ? fetch : fetch_node)(file)
        .then(function(result) { return result.arrayBuffer() })
        .then(function(buffer) { return WebAssembly.instantiate(buffer, { env: env }) })
        .then(function(module) {
            var cexports = module.instance.exports,
                exports = {};
            for (var i = 0, ks = getOwnPropertyNames(cexports); i < ks.length; )
                exports[ks[i]] = cexports[ks[i++]];
            env.stackmax = memory.U32[1] + 4;
            return {
                env: env,
                memory: memory,
                exports: exports
            };
        });
}

webassembly.load = load;

var fs = require(1)("fs");

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

},{"1":1}]},{},[2])
//# sourceMappingURL=webassembly.js.map
