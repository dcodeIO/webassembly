if (process.argv.length < 3)
    return;

var dir = "musl/src";

require("glob").glob(dir + "/" + process.argv[2], (err, files) => {
    console.log(JSON.stringify(files, null, 4));
});
