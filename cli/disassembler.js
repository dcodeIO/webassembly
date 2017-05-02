#!/usr/bin/env node
var minimist = require("minimist"),
    chalk    = require("chalk"),
    path     = require("path"),
    tmp      = require("tmp"),
    fs       = require("fs"),
    util     = require("../cli/util"),
    pkg      = require("../package.json");

exports.main = function(argv) {

    // Define arguments

     argv = minimist(argv, {
        alias: {
            out: "o",
            debug: "d"
        },
        string: [ "out" ],
        boolean: [ "debug" ]
    });

    // Validate arguments

    var files = argv._;
    if (files.length !== 1) {
        process.stderr.write([
            "webassembly v" + pkg.version + " Disassembler",
            "",
            chalk.bold.white("Disassembles a WebAssembly module to text format."),
            "",
            "  -o, --out      Specifies the .wast output file. Defaults to input file with .wast extension.",
            "  -d, --debug    Prints debug information to stderr.",
            "",
            "usage: " + chalk.bold.cyan("wa-disassemble") + " [options] program.wasm",
            ""
        ].join("\n"));
        return 1;
    }

    // Check platform

    var platform = util.platform();
    var bindir = path.join("tools", "bin", platform);

    process.stderr.write(chalk.bold.white("Disassembling on " + platform + " ...\n\n"));

    var run = util.run,
        basedir = path.join(__dirname, ".."),
        file = path.normalize(files[0]),
        out = argv.out && path.normalize(argv.out) || path.join(path.dirname(file), path.basename(file, ".wasm") + ".wast");

    run(path.join(basedir, bindir, "wasm-dis"), [
        [ argv.debug && "-d" || undefined ],
        "-o", out,
        file
    ]).then(() => {

    process.stderr.write(chalk.green.bold("SUCCESS") + "\n");

    });

};
