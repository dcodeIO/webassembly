var child_process = require("child_process"),
    chalk = require("chalk"),
    path  = require("path"),
    tmp   = require("tmp"),
    fs    = require("fs");

// Set up environment

process.on("uncaughtException", err => {
    process.stderr.write("\n" + chalk.red.bold("FAILED") + " " + err.stack + "\n");
    process.exit(1);
});

process.on("unhandledRejection", (err, p) => {
    throw err;
});

tmp.setGracefulCleanup();

// Expose utility

function run(cmd, args) {
    if (!args)
        args = [];
    var index = 0;
    while (index < args.length) {
        if (args[index] == null)
            args.splice(index, 1);
        else if (Array.isArray(args[index])) {
            if (args[index].some(item => item == null))
                args.splice(index, 1);
            else
                Array.prototype.splice.apply(args, [ index, 1 ].concat(args[index]));
        } else
            ++index;
    }
    process.stderr.write(chalk.white.bold(path.basename(cmd)) + " " + args.map((arg, i) => i === args.length - 1 || arg.charAt(0) === "-" ? "\n " + arg : arg).join(" ") + "\n\n");
    return new Promise(function(resolve, reject) {
        var proc = child_process.spawn(cmd, args, { stdio: "inherit" });
        proc.on("close", function(code) {
            if (code === 0)
                resolve();
            else
                reject(new Error("code " + code));
        });
        proc.on("error", function(err) {
            reject(err);
        });
    });
}

exports.run = run;

exports.platform = function() {
    var platform = process.platform + "-" + process.arch;
    if (fs.existsSync(path.join(__dirname, "..", "tools", "bin", platform)))
        return platform;
    throw Error("cannot find binaries for " + platform);
}
