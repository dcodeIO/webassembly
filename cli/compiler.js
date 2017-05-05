var minimist = require("minimist"),
    chalk    = require("chalk"),
    path     = require("path"),
    tmp      = require("tmp"),
    util     = require("../cli/util");

var optimizeFinal = require("./config/optimize-final.json"),
    optimizeLink  = require("./config/optimize-link.json");

exports.main = (argv, callback) => {

    if (!callback)
        callback = util.defaultCallback;

    // Define arguments

    argv = minimist(argv, {
        alias: {
            out: "o",
            debug: "d",
            quiet: "q",

            optimize: "O",
            stack: "s",
            main: "m",
            define: "D",

            headers: "I",
            include: "i",
            link: "l",
            bare: "b"
        },
        string: [ "out", "stack", "main", "headers", "include", "link", "define" ],
        boolean: [ "debug", "quiet", "optimize", "bare" ]
    });

    // Validate arguments

    var files = argv._;
    if (files.length !== 1) {
        util.printLogo("Compiler");
        process.stderr.write([
            chalk.bold.white("Compiles C code to a WebAssembly module."),
            "",
            "  -o, --out        Specifies the .wasm output file. Defaults to stdout.",
            "  -d, --debug      Prints debug information to stderr.",
            "  -q, --quiet      Suppresses informatory output.",
            "",
            chalk.gray.bold("  Module configuration:"),
            "",
            "  -O, --optimize   Optimizes the output file and removes dead code.",
            "  -s, --stack      Specifies the stack size. Defaults to 10000.",
            "  -m, --main       Executes the specified function on load.",
            "  -D, --define     Defines a macro.",
            "",
            chalk.gray.bold("  Includes and libraries:"),
            "",
            "  -I, --headers    Includes C headers from the specified directories.",
            "  -i, --include    Includes the specified source files.",
            "  -l, --link       Links in the specified libraries after compilation.",
            "  -b, --bare       Does not include the runtime library.",
            "",
            "usage: " + chalk.bold.cyan("wa-compile") + " [options] program.c",
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
        process.stderr.write(chalk.bold.white("Compiling on " + platform + " ...\n\n"));

    tmp.setGracefulCleanup();

    var temp = [
        tmp.fileSync({ prefix: "wa-1-" }),
        tmp.fileSync({ prefix: "wa-2-" })
    ];

    var file = path.normalize(files[0]),
        out = argv.out && path.normalize(argv.out) || undefined;

    var defines = argv.define  && typeof argv.define  === "string" && [ argv.define  ] || argv.define  || [],
        headers = argv.headers && typeof argv.headers === "string" && [ argv.headers ] || argv.headers || [],
        include = argv.include && typeof argv.include === "string" && [ argv.include ] || argv.include || [];
        links   = argv.link    && typeof argv.link    === "string" && [ argv.link    ] || argv.link    || [];

    var includeArgs = [];
    if (!argv.bare)
        includeArgs.push("--include", path.join(util.basedir, "lib/webassembly.c"));
        // links.unshift(path.join(util.basedir, "lib/webassembly.wast"));
        /* wasm-merge doesn't work, randomly throws:
           1) Expression: map/set iterator not dereferencable
           2)
           merged total memory size: 4
           merged total table size: 0
           merged functions: 36
           FAILED Error: code 3221225477 */

    headers.forEach(file => { includeArgs.push("-I", file); });
    include.forEach(file => { includeArgs.push("-include", file); });
    defines.forEach(def  => { includeArgs.push("-D" + def); });

    var p =

    util.run(path.join(util.bindir, "clang"), [
        file,
        "-S",
        "-D__WEBASSEMBLY__",
        "-nostdinc",
        "-I", path.join(util.basedir, "include"),
        "-I", path.join(util.basedir, "include", "stdlib"),
        includeArgs,
        [ argv.debug && "-v" || undefined ],
        "-o", temp[0].name
    ], argv).then(() =>

    util.run(path.join(util.bindir, "s2wasm"), [
        temp[0].name,
        "--import-memory" ,
        argv.bare ? undefined : [ "--allocate-stack", argv.stack || "10000" ],
        [ "--start", argv.main ],
        argv.debug ? "-d" : undefined,
        "-o", temp[1].name
    ], argv)).then(() =>

    util.run(path.join(util.bindir, "wasm-opt"), [
        temp[1].name,
        argv.optimize && (links.length || argv.bare ? optimizeLink : optimizeFinal) || [],
        argv.debug ? "--debug" : undefined,
        [ "-o", links.length ? temp[0].name : out ]
    ], argv));

    if (links.length)  {

        p = p.then(() => 

        util.run(path.join(util.bindir, "wasm-merge"), [
            links,
            temp[0].name,
            argv.optimize ? "-O" : undefined,
            argv.debug ? "-d" : undefined,
            [ "-o", argv.optimize ? temp[1].name : out ]
        ], argv));

        if (argv.optimize) p = p.then(() => 

            util.run(path.join(util.bindir, "wasm-opt"), [
                temp[1].name,
                optimizeFinal,
                argv.debug ? "-d" : undefined,
                [ "-o", out ]
            ], argv));

    }

    p.then(finish, callback);

    function finish() {
        if (!argv.quiet)
            process.stderr.write(chalk.green.bold("SUCCESS") + "\n");
        callback(null, out);
    }
};
