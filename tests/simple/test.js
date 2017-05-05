// requires node with 'WebAssembly' global (i.e. node 8 nightly)

var webassembly = require("..");

webassembly.load(require.resolve("test.wasm")).then(module => {
    console.log(module);
    console.log("add(1, 2) = " + module.exports.add(1, 2));
});
