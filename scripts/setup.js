var https = require('follow-redirects').https,
    chalk = require("chalk"),
    path  = require("path"),
    fs    = require("fs"),
    tmp   = require("tmp"),
    targz = require("tar.gz"),
    unzip = require("extract-zip"),
    util  = require("../cli/util"),
    pkg   = require("../package.json");

if (fs.existsSync(util.bindir)) {
    process.stdout.write(chalk.white.bold("Already have binaries, skipping download...") + "\n");
    process.exit(0);
}

var platform = process.platform + "-" + process.arch,
    isWindows = /^win32/.test(platform),
    temp = tmp.fileSync({ prefix: "wa-tools-" }),
    file = fs.createWriteStream(temp.name),
    archive = "tools-" + platform + (isWindows ? ".zip" : ".tar.gz");

function download(callback) {
    var req = https.get("https://github.com/dcodeIO/webassembly/releases/download/" + pkg.tools + "/" + archive, res => {
        if (res.statusCode !== 200) {
            req.abort();
            callback(Error("no prebuilt binaries available for " + platform + " (code " + res.statusCode + ")"));
            return;
        }
        var total = res.headers["content-length"],
            current = 0,
            lastPercent = 0;
        res.on("error", function(err) {
            callback(err);
        });
        res.on("end", function() {
            callback(null, temp.name);
        });
        process.stderr.write("0% ");
        res.on("data", function(chunk) {
            current += chunk.length;
            var percent = Math.round(current * 100 / total);
            if (percent > lastPercent + 9) {
                lastPercent = percent;
                if (percent === 100)
                    process.stderr.write(chalk.green.bold("COMPLETE") + "\n\n");
                else
                    process.stderr.write(percent + "% ");
            }
        });
        res.pipe(file);
    });
}

function install(file, callback) {
    fs.mkdir(util.bindir, function() {
        if (isWindows)
            unzip(file, { dir: util.bindir }, callback);
        else
            targz().extract(file, util.bindir, callback);
    });
}

util.printLogo("Setup");
process.stdout.write(chalk.white.bold("Downloading binaries for " + platform + " ...") + "\n");
download(function(err, file) {
    if (err) {
        process.stderr.write("\n");
        throw err;
    }
    process.stdout.write(chalk.white.bold("Installing binaries to " + path.relative(process.cwd(), util.bindir) + " ...") + "\nPlease hang on ... ");
    install(file, function(err) {
        if (err)
            throw err;
        process.stdout.write(chalk.green.bold("COMPLETE") + "\n\n");
    });
});
