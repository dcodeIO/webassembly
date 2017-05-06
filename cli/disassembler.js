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
            quiet: "q"
        },
        string: [ "out" ],
        boolean: [ "debug", "quiet" ]
    });

    // Validate arguments

    var files = argv._;
    if (files.length !== 1) {
        util.printLogo("Disassembler");
        process.stderr.write([
            chalk.bold.white("Disassembles a WebAssembly module to text format."),
            "",
            "  -o, --out      Specifies the .wast output file. Defaults to stdout.",
            "  -d, --debug    Prints debug information to stderr.",
            "  -q, --quiet    Suppresses informatory output.",
            "",
            "usage: " + chalk.bold.cyan("wa-disassemble") + " [options] program.wasm",
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

    var bindir = path.join("tools", "bin", platform);

    if (!argv.quiet)
        process.stderr.write(chalk.bold.white("Disassembling on " + platform + " ...\n\n"));

    var file = path.normalize(files[0]),
        out = argv.out && path.normalize(argv.out) || undefined;

    util.run(path.join(util.basedir, bindir, "wasm-dis"), [
        [ argv.debug && "-d" || undefined ],
        [ "-o", out ],
        file
    ], argv).then(() => {

        finish();

    }, callback);

    function finish() {
        if (!argv.quiet)
            util.defaultSuccess();
        callback(null, out);
    }
};
