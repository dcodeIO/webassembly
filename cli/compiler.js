#!/usr/bin/env node
var minimist = require("minimist"),
    chalk    = require("chalk"),
    path     = require("path"),
    tmp      = require("tmp"),
    fs       = require("fs"),
    util     = require("../cli/util"),
    pkg      = require("../package.json");

exports.main = (argv, callback) => {

    if (!callback)
        callback = () => {};

    // Define arguments

    argv = minimist(argv, {
        alias: {
            out: "o",
            debug: "d",
            quiet: "q",
            stack: "s",
            main: "m"
        },
        string: [ "out", "main", "stack" ],
        boolean: [ "debug", "quiet" ]
    });

    // Validate arguments

    var files = argv._;
    if (files.length !== 1) {
        process.stderr.write([
            "webassembly v" + pkg.version + " Compiler",
            "",
            chalk.bold.white("Compiles C code to a WebAssembly module."),
            "",
            "  -o, --out      Specifies the .wasm output file. Defaults to input file with .wasm extension.",
            "  -d, --debug    Prints debug information to stderr.",
            "  -q, --quiet    Suppresses informatory output.",
            "",
            chalk.gray.bold("  Module configuration:"),
            "",
            "  -s, --stack    Specifies the stack size. Defaults to 10000.",
            "  -m, --main     Calls the specified function on start.",
            "",
            "usage: " + chalk.bold.cyan("wa-compile") + " [options] program.c",
            ""
        ].join("\n"));
        process.nextTick(() => {
            callback(Error("usage"));
        });
        return 1;
    }

    // Check platform

    var platform = util.platform();
    if (!platform) {
        var err = Error("platform binaries not found for " + util.platform.target);
        callback(err);
        return 3;
    }

    var bindir = path.join("tools", "bin", platform);

    if (!argv.quiet)
        process.stderr.write(chalk.bold.white("Compiling on " + platform + " ...\n\n"));

    tmp.setGracefulCleanup();

    var run = util.run,
        basedir = path.join(__dirname, ".."),
        file = path.normalize(files[0]),
        temp = tmp.fileSync({ prefix: "wa-compile-" }),
        out = argv.out && path.normalize(argv.out) || path.join(path.dirname(file), path.basename(file, ".c") + ".wasm");

    run(path.join(basedir, bindir, "clang"), [
        "-O",
        "-S",
        "-target", "wasm32-unknown-unknown",
        "-nostdlib",
        "-nobuiltininc",
        "-no-integrated-as",
        "-Wno-builtin-requires-header",
        "-I", path.join(basedir, "include"),
        [ argv.debug && "-v" || undefined ],
        "-o", temp.name,
        file
    ], argv).then(() =>

    run(path.join(basedir, bindir, "s2wasm"), [
        "--import-memory",
        [ "--allocate-stack", argv.stack || "10000" ],
        [ "--start", argv.main ],
        [ argv.debug && "-d" || undefined ],
        "-o", temp.name,
        temp.name

    ], argv)).then(() =>

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
        temp.name
    ], argv)).then(() => {

    if (!argv.quiet)
        process.stderr.write(chalk.green.bold("SUCCESS") + "\n");

    callback(null, out);

    }, callback);

};
