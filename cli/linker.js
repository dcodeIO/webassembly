var minimist = require("minimist"),
    chalk    = require("chalk"),
    path     = require("path"),
    util     = require("../cli/util");

exports.main = (argv, callback) => {

    if (!callback)
        callback = util.defaultCallback;

    // Define arguments

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

    // Validate arguments

    var files = argv._;
    if (files.length !== 1) {
        util.printLogo("Linker");
        process.stderr.write([
            chalk.bold.white("Links multiple WebAssembly modules to one."),
            "",
            "  -o, --out      Specifies the .wasm output file. Defaults to write to stdout.",
            "  -d, --debug    Prints debug information to stderr.",
            "  -q, --quiet    Suppresses informatory output.",
            "",
            chalk.gray.bold("  Module configuration:"),
            "",
            "  -O, --optimize   Performs link-time optimizations.",
            "",
            "usage: " + chalk.bold.cyan("wa-link") + " [options] program1.wasm program2.wasm",
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
        util.printHeading("Linking on " + platform + " ...");

    files = files.map(file => path.normalize(file));

    var out = argv.out && path.normalize(argv.out) || undefined;

    util.run(path.join(util.bindir, "wasm-merge"), [

        files,
        [ argv.optimize && "-O" || undefined ],
        [ argv.debug && "--debug" || undefined ],
        [ "-o", out ]

    ], argv).then(finish, callback);

    function finish() {
        if (!argv.quiet)
            util.defaultSuccess();
        callback(null, out);
    }
};
