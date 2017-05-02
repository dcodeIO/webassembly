#!/usr/bin/env node
var minimist = require("minimist"),
    chalk    = require("chalk"),
    path     = require("path"),
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
            "webassembly v" + pkg.version + " Assembler",
            "",
            chalk.bold.white("Assembles WebAssembly text format to a module."),
            "",
            "  -o, --out      Specifies the .wasm output file. Defaults to input file with .wasm extension.",
            "  -d, --debug    Prints debug information to stderr.",
            "",
            "usage: " + chalk.bold.cyan("wa-assemble") + " [options] program.wast",
            ""
        ].join("\n"));
        return 1;
    }

    // Check platform

    var platform = util.platform();
    var bindir = path.join("tools", "bin", platform);

    process.stderr.write(chalk.bold.white("Assembling on " + platform + " ...\n\n"));

    var run = util.run,
        basedir = path.join(__dirname, ".."),
        file = path.normalize(files[0]),
        out = argv.out && path.normalize(argv.out) || path.join(path.dirname(file), path.basename(file, ".wast") + ".wasm");

    run(path.join(basedir, bindir, "wasm-opt"), [
        "-O3",
        "--coalesce-locals-learning",
        "--dce",
        "--duplicate-function-elimination",
        "--inlining",
        "--local-cse",
        "--optimize-instructions",
        "--reorder-functions",
        "--reorder-locals",
        "--vacuum"
        [ argv.debug && "-d" || undefined ],
        "-o", out,
        file
    ]).then(() => {

    process.stderr.write(chalk.green.bold("SUCCESS") + "\n");

    });

};
