var child_process = require("child_process"),
    chalk = require("chalk"),
    path  = require("path"),
    fs    = require("fs");

// Expose utility

function run(cmd, argv, options) {
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
        process.stderr.write(chalk.white.bold(path.basename(cmd)) + " " + argv.map((arg, i) => i === argv.length - 1 || arg.charAt(0) === "-" ? "\n " + arg : arg).join(" ") + "\n\n");
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
}

exports.run = run;

exports.platform = function platform() {
    var target = process.platform + "-" + process.arch;
    if (fs.existsSync(path.join(__dirname, "..", "tools", "bin", target)))
        return target;
    platform.target = target;
    return null;
}
