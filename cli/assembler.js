var minimist = require("minimist"),
    chalk    = require("chalk"),
    path     = require("path"),
    util     = require("../cli/util");

var optimizeFinal = require("./config/optimize-final.json");

exports.main = (argv, callback) => {

    if (!callback)
        callback = util.defaultCallback;

     argv = minimist(argv, {
        alias: {
            out: "o",
            debug: "d",
            quiet: "q",
            optimize: "O"
        },
        string: [ "out" ],
        boolean: [ "debug", "quiet", "optimize" ]
    });

    var files = argv._;
    if (files.length !== 1) {
        util.printLogo("Assembler");
        process.stderr.write([
            chalk.bold.white("Assembles WebAssembly text format to a module."),
            "",
            "  -o, --out        Specifies the .wasm output file. Defaults to stdout.",
            "  -d, --debug      Prints debug information to stderr.",
            "  -q, --quiet      Suppresses informatory output.",
            "",
            chalk.gray.bold("  Module configuration:"),
            "",
            "  -O, --optimize   Optimizes the output file and removes dead code.",
            "",
            "usage: " + chalk.bold.cyan("wa-assemble") + " [options] program.wast",
            ""
        ].join("\n"));
        process.nextTick(() => {
            callback(Error("usage"));
        });
        return 1;
    }

    var platform = util.checkPlatform(callback);
    if (!platform)
        return 3;

    if (!argv.quiet)
        util.printHeading("Assembling on " + platform + " ...");

    var file = path.normalize(files[0]),
        out = argv.out && path.normalize(argv.out) || undefined;

    util.run(path.join(util.bindir, "wasm-opt"), [

        file,
        argv.optimize && optimizeFinal || [],
        [ argv.debug && "-d" || undefined ],
        [ "-o", out ]

    ], argv).then(finish, callback);

    function finish() {
        if (!argv.quiet)
            util.defaultSuccess();
        callback(null, out);
    }
};
