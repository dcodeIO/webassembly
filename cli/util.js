var child_process = require("child_process"),
    chalk = require("chalk"),
    path  = require("path"),
    fs    = require("fs");

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

exports.platform = function platform() {
    var target = process.platform + "-" + process.arch;
    if (fs.existsSync(path.join(__dirname, "..", "tools", "bin", target)))
        return target;
    platform.target = target;
    return null;
}
