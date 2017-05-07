"use strict";

if (typeof window !== "undefined" && window)
    window.webassembly = exports;

// Common aliases
var getOwnPropertyNames = Object.getOwnPropertyNames;

/**
 * Describes a module instance as returned by {@link load}.
 * @interface IModule
 * @property {Object.<string,*>} exports Exports
 * @property {Object.<string,*>} imports Imports
 * @property {IMemory} memory Memory
 * @property {Object.<string,*>} env Environment
 */

/**
 * Describes a module memory instance.
 * @interface IMemory
 * @property {ArrayBuffer} buffer Underlying buffer
 * @property {number} initial=1 Specified initial amount of memory in 64k pages
 * @property {number} [maximum] If specified, maximum amount of memory in 64k pages
 * @property {Uint8Array} U8 Byte-level view
 * @property {Uint32Array} U32 Aligned unsigned 32-bit integer view
 * @property {Int32Array} S32 Aligned signed 32-bit integer view
 * @property {Float32Array} F32 Aligned 32-bit float view
 * @property {Float64Array} F64 Aligned 64-bit double view
 * @property {GetInt} getInt Reads a 32-bit signed integer starting at the specified memory offset (aligned to 4 bytes)
 * @property {GetUint} getUint Reads a 32-bit unsigned integer starting at the specified memory offset (aligned to 4 bytes)
 * @property {GetFloat} getFloat Reads a 32-bit float starting at the specified memory offset (aligned to 4 bytes)
 * @property {GetDouble} getDouble Reads a 64-bit double starting at the specified memory offset (aligned to 8 bytes)
 * @property {GetString} getString Reads the (zero-terminated, exclusive) string starting at the specified memory offset (aligned to 4 bytes)
 */

/**
 * Loads a WebAssembly.
 * @param {string} file File name
 * @param {LoadOptions} [options] Options
 * @returns {Promise.<IModule>} Promise resolving to the instantiated module
 */
function load(file, options) {

    /**
     * Options as used by {@link load}.
     * @interface LoadOptions
     * @property {number} [initialMemory=1] Initial memory in pages of 64k
     * @property {number} [maximumMemory] Maximum memory in pages of 64k
     * @property {Object.<string,*>} [imports] Imports
     */

    options || (options = {});

    var imports = options.imports || {};

    // Initialize memory

    var memory = imports.memory;
    if (!memory) {
        var opts = { initial: options.initialMemory || 1 };
        if (options.maximumMemory)
            opts.maximum = options.maximumMemory;
        memory = new WebAssembly.Memory(opts);
        memory.initial = options.initialMemory || 1;
        memory.maximum = options.maximumMemory;
    }

    var table = imports.table;
    if (!table)
        table = new WebAssembly.Table({ initial: 0, element: "anyfunc" });

    function grow() {
        var buf = memory.buffer;
        memory.U8  = new Uint8Array  (buf);
        memory.S32 = new Int32Array  (buf);
        memory.U32 = new Uint32Array (buf);
        memory.F32 = new Float32Array(buf);
        memory.F64 = new Float64Array(buf);
    }

    grow();

    // Add utilty to memory

    /**
     * Reads a 32-bit signed integer starting at the specified memory offset.
     * @typedef GetInt
     * @function
     * @param {number} ptr Memory offset
     * @returns {number} Signed 32-bit integer value
     */
    function getInt(ptr) {
        return memory.S32[ptr >> 2];
    }

    memory.getInt = getInt;

    /**
     * Reads a 32-bit unsigned integer starting at the specified memory offset.
     * @typedef GetUint
     * @function
     * @param {number} ptr Memory offset
     * @returns {number} Unsigned 32-bit integer value
     */
    function getUint(ptr) {
        return memory.U32[ptr >> 2];
    }

    memory.getUint = getUint;

    /**
     * Reads a 32-bit float starting at the specified memory offset.
     * @typedef GetFloat
     * @function
     * @param {number} ptr Memory offset
     * @returns {number} 32-bit float value
     */
    function getFloat(ptr) {
        return memory.F32[ptr >> 2];
    }

    memory.getFloat = getFloat;

    /**
     * Reads a 64-bit double starting at the specified memory offset.
     * @typedef GetDouble
     * @function
     * @param {number} ptr Memory offset
     * @returns {number} 64-bit float value
     */
    function getDouble(ptr) {
        return memory.F64[ptr >> 3];
    }

    memory.getDouble = getDouble;

    /**
     * Reads a (zero-terminated, exclusive) string starting at the specified memory offset.
     * @typedef GetString
     * @function
     * @param {number} ptr Memory offset
     * @returns {string} String value
     */
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
    env.memory = memory;
    env.tableBase = imports.tableBase || 0;
    env.table = table;

    // Add console to environment

    function sprintf(ptr, base) {
        var s = getString(ptr);
        return base
            ? s.replace(/%([dfisu]|lf)/g, ($0, $1) => {
                var val;
                return base +=
                    $1 === "u"  ? (val = getUint(base), 4)
                  : $1 === "f"  ? (val = getFloat(base), 4)
                  : $1 === "s"  ? (val = getString(getUint(base)), 4)
                  : $1 === "lf" ? (val = getDouble(base), 8)
                  :               (val = getInt(base), 4)
                  , val;
            })
            : s;
    }

    getOwnPropertyNames(console).forEach(key => {
        if (typeof console[key] === "function") // eslint-disable-line no-console
            env["console_" + key] = (ptr, base) => {
                console[key](sprintf(ptr, base)); // eslint-disable-line no-console
            };
    });

    // Add Math to environment

    getOwnPropertyNames(Math).forEach(key => {
        if (typeof Math[key] === "function")
            env["Math_" + key] = Math[key];
    });

    // Add imports to environment

    Object.keys(imports).forEach(key => env[key] = imports[key]);

    // Add default exit listeners if not explicitly imported

    if (!env._abort)
        env._abort = errno => { throw Error("abnormal abort in " + file + ": " + errno); };
    if (!env._exit)
        env._exit = code => { if (code) throw Error("abnormal exit in " + file + ": " + code); }

    // Finally, fetch the assembly and instantiate it

    env._grow = grow;

    return (typeof fetch === "function" && fetch || fetch_node)(file)
        .then(result => result.arrayBuffer())
        .then(buffer => WebAssembly.instantiate(buffer, { env: env }))
        .then(module => {
            var instance = module.instance;
            instance.imports = imports;
            instance.memory = memory;
            instance.env = env;
            return instance;
        });
}

exports.load = load;

// Internal fetch API polyfill for node that doesn't trigger webpack
var fs;
function fetch_node(file) {
    return new Promise((resolve, reject) => (fs || (fs = eval("equire".replace(/^/, "r"))("fs"))).readFile(file, (err, data) => err ? reject(err) : resolve({ arrayBuffer: () => data })));
}
