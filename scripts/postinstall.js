var http  = require('follow-redirects').https,
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
    var req = http.get("https://github.com/dcodeIO/webassembly/releases/download/" + pkg.tools + "/" + archive, res => {
        if (res.statusCode !== 200) {
            req.abort();
            callback(Error("no prebuilt binaries available for " + platform + " (code " + res.statusCode + ")"));
            return;
        }
        res.on("error", function(err) {
            callback(err);
        });
        res.on("end", function() {
            callback(null, temp.name);
        });
        res.pipe(file);
    });
}

function install(file, callback) {
    var bindir = path.join(__dirname, "..", "tools", "bin", platform);
    fs.mkdir(bindir, function(err) {
        if (/\.zip$/.test(archive))
            unzip(file, { dir: bindir }, callback);
        else
            targz().extract(file, bindir, callback);
    });
}

process.stdout.write("Downloading binaries for " + platform + " ...\n");
download(function(err, file) {
    if (err)
        throw err;
    process.stdout.write("Installing binaries to " + bindir + " ...\n");
    install(file, function(err) {
        if (err)
            throw err;
        process.stdout.write("\n" + chalk.green.bold("SUCCESS") + "\n");
    });
});
