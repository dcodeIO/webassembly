var child_process = require("child_process"),
    chalk = require("chalk"),
    path  = require("path"),
    fs    = require("fs"),
    pkg   = require("../package.json");

exports.basedir = path.join(__dirname, "..");

exports.bindir = path.join(__dirname, "..", "tools", "bin", process.platform + "-" + process.arch);

exports.run = function run(cmd, argv, options) {
    if (!argv)
        argv = [];
    var index = 0;
    while (index < argv.length) {
        if (argv[index] == null)
            argv.splice(index, 1);
        else if (Array.isArray(argv[index])) {
            if (argv[index].some(item => item == null))
                argv.splice(index, 1);
            else
                Array.prototype.splice.apply(argv, [ index, 1 ].concat(argv[index]));
        } else
            ++index;
    }
    if (!(options && options.quiet))
        process.stderr.write(chalk.cyan.bold(path.basename(cmd)) + " " + argv.map((arg) => arg.charAt(0) === "-" ? "\n " + arg : chalk.gray.bold(arg)).join(" ") + "\n\n");
    return new Promise(function(resolve, reject) {
        var proc = child_process.spawn(cmd, argv, { stdio: "inherit" });
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
};

exports.checkPlatform = function checkPlatform(callback) {
    var target = process.platform + "-" + process.arch;
    if (fs.existsSync(path.join(__dirname, "..", "tools", "bin", target)))
        return target;
    if (callback)
        callback(Error("platform binaries not found for " + target));
    return null;
};

exports.printLogo = function printLogo(text) {
    text = text ? " " + text : "";
    process.stderr.write(([
        "",
        chalk.gray.bold("┌────┐"),
        chalk.gray.bold("│    │"),
        chalk.gray.bold("│  ") + chalk.white.bold("webassembly") + " v" + pkg.version + text,
        chalk.gray.bold("└────┘")
    ].join("\n") + "\n\n"));
};

exports.defaultCallback = function defaultCallback(err) {
    if (err)
        process.stderr.write(chalk.red.bold("FAILED") + " " + err.stack + "\n");
};
