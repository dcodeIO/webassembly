var tap = require("tap"),
    fs  = require("fs");

var compiler     = require("../cli/compiler"),
    disassembler = require("../cli/disassembler"),
    assembler    = require("../cli/assembler");

tap.test("compiler", function(test) {
    compiler.main([
        "--main", "main",
        "-q",
        "-o", "tests/test.wasm",
        "tests/test.c"
    ], function(err) {
        test.notOk(err, "should not raise an error");
        test.done();
    });
});

tap.test("disassembler", function(test) {
    disassembler.main([
        "-o", "tests/test.wast",
        "-q",
        "tests/test.wasm"
    ], function(err) {
        test.notOk(err, "should not raise an error");
        test.done();
    });
});

tap.test("assembler", function(test) {
    assembler.main([
        "-o", "tests/test-as.wasm",
        "-q",
        "tests/test.wast"
    ], function(err) {
        test.notOk(err, "should not raise an error");
        fs.unlink("tests/test-as.wasm", function(err) {
            test.done();
        });
    });
});
