var https = require('follow-redirects').https,
    chalk = require("chalk"),
    path  = require("path"),
    fs    = require("fs"),
    tmp   = require("tmp"),
    targz = require("tar.gz"),
    unzip = require("extract-zip"),
    util  = require("../cli/util"),
    pkg   = require("../package.json");

var platform = process.platform + "-" + process.arch,
    temp = tmp.fileSync({ prefix: "wa-tools-" }),
    file = fs.createWriteStream(temp.name),
    bindir = path.join(__dirname, "..", "tools", "bin", platform),
    archive = "tools-" + platform + (/^win32/.test(platform) ? ".zip" : ".tar.gz");

function download(callback) {
    var req = https.get("https://github.com/dcodeIO/webassembly/releases/download/" + pkg.tools + "/" + archive, res => {
        if (res.statusCode !== 200) {
            req.abort();
            callback(Error("no prebuilt binaries available for " + platform + " (code " + res.statusCode + ")"));
            return;
        }
        var total = res.headers["content-length"],
            current = 0.
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
    var bindir = path.join(__dirname, "..", "tools", "bin", platform);
    fs.mkdir(bindir, function() {
        if (/\.zip$/.test(archive))
            unzip(file, { dir: bindir }, callback);
        else
            targz().extract(file, bindir, callback);
    });
}

util.logo("v" + pkg.version + " Setup");
process.stdout.write(chalk.white.bold("Downloading binaries for " + platform + " ...") + "\n");
download(function(err, file) {
    if (err) {
        process.stderr.write("\n");
        throw err;
    }
    process.stdout.write(chalk.white.bold("Installing binaries to " + path.relative(process.cwd(), bindir) + " ...") + "\nPlease hold on ... ");
    install(file, function(err) {
        if (err)
            throw err;
        process.stdout.write(chalk.green.bold("COMPLETE") + "\n\n");
    });
});
