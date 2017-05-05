var tap = require("tap"),
    fs  = require("fs");

var compiler     = require("../cli/compiler"),
    disassembler = require("../cli/disassembler"),
    assembler    = require("../cli/assembler");

tap.test("compiler", function(test) {
    compiler.main([
        "--main", "main",
        "-q",
        "-o", "tests/simple/test.wasm",
        "tests/simple/test.c"
    ], function(err) {
        test.notOk(err, "should not raise an error");
        test.done();
    });
});

tap.test("disassembler", function(test) {
    disassembler.main([
        "-o", "tests/simple/test.wast",
        "-q",
        "tests/simple/test.wasm"
    ], function(err) {
        test.notOk(err, "should not raise an error");
        test.done();
    });
});

tap.test("assembler", function(test) {
    assembler.main([
        "-o", "tests/simple/test-as.wasm",
        "-q",
        "tests/simple/test.wast"
    ], function(err) {
        test.notOk(err, "should not raise an error");
        fs.unlink("tests/simple/test-as.wasm", function() {
            test.done();
        });
    });
});
