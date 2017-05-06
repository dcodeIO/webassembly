if (process.argv.length < 3)
    return;

var fs = require("fs");

var dir = "musl/src";

fs.readdir(dir + "/" + process.argv[2], function(err, files) {
    console.log(JSON.stringify(files.map(f => dir + "/" + process.argv[2] + "/" + f), null, 4));
});
