// This is a custom build script to build all of LLVM and binaryen accross platforms.
// Requirements: cmake (any platform), msbuild (windows) or gnu make (linux)

var path     = require("path"),
    glob     = require("glob"),
    fs       = require("fs"),
    os       = require("os"),
    chalk    = require("chalk"),
    archiver = require("archiver"),
    util     = require("../cli/util");

var isWindows = process.platform === "win32",
    cpus      = process.env.CPUS || Math.max(os.cpus().length - 1, 1);

var llvmSourceDir     = path.join(util.basedir, "tools", "llvm"),
    llvmBuildDir      = path.join(util.basedir, "tools", "build", "llvm");
var binaryenSourceDir = path.join(util.basedir, "tools", "binaryen"),
    binaryenBuildDir  = path.join(util.basedir, "tools", "build", "binaryen");

util.printLogo("Tools");
process.stderr.write(chalk.white.bold("Building on " + process.platform + "-" + process.arch + " ...") + "\n\n");

var p =

// Configure LLVM

util.run(process.env.CMAKE || "cmake", [

    "-DCMAKE_BUILD_TYPE=Release",
    "-DLLVM_TARGETS_TO_BUILD=",
    "-DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=WebAssembly",
    "-DLLVM_DEFAULT_TARGET_TRIPLE=wasm32-unknown-unknown",
    "-DLLVM_INCLUDE_TESTS=OFF",
    "-DLLVM_INCLUDE_EXAMPLES=OFF",
    "-DLLVM_ENABLE_PROJECTS=clang;compiler-rt", /* ;lld */
    isWindows ? undefined : "-DCMAKE_EXE_LINKER_FLAGS=-static-libgcc -static-libstdc++",
    llvmSourceDir

], { cwd: llvmBuildDir }).then(() =>

// Configure binaryen

util.run(process.env.CMAKE || "cmake", [

    "-DCMAKE_BUILD_TYPE=Release",
    binaryenSourceDir

], { cwd: binaryenBuildDir }));

var MSBUILD;

if (isWindows) p = p.then(() => 

    // Find msbuild

    new Promise((resolve, reject) => {
        if (process.env.MSBUILD)
            resolve(MSBUILD = process.env.MSBUILD);
        else
            glob(path.join(process.env.SYSTEMROOT, "Microsoft.NET", "Framework", "v4*", "msbuild.exe"), (err, matches) => {
                if (err)
                    reject(err);
                else if (!matches || !matches.length)
                    reject(Error("could not find msbuild"));
                else
                    resolve(MSBUILD = matches[matches.length - 1]);
            });
    })).then(() =>

    // Build all of LLVM

    util.run(MSBUILD, [

        "tools/clang/tools/driver/clang.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: llvmBuildDir })).then(() => 

    util.run(MSBUILD, [

        "tools/llvm-link/llvm-link.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: llvmBuildDir })).then(() => 

    util.run(MSBUILD, [

        "tools/llc/llc.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: llvmBuildDir })).then(() => 

    /* util.run(MSBUILD, [

        "tools/lld/tools/lld/lld.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: llvmBuildDir })).then(() => */

    // Build all of binaryen

    util.run(MSBUILD, [

        "s2wasm.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: binaryenBuildDir })).then(() => 

    util.run(MSBUILD, [

        "wasm-opt.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: binaryenBuildDir })).then(() => 

    util.run(MSBUILD, [

        "wasm-as.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: binaryenBuildDir })).then(() => 

    util.run(MSBUILD, [

        "wasm-dis.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: binaryenBuildDir })).then(() => 

    util.run(MSBUILD, [

        "wasm-merge.vcxproj",
        "/p:Configuration=Release",
        "/maxcpucount:" + cpus

    ], { cwd: binaryenBuildDir })).then(() => {

        return [
            path.join(llvmBuildDir, "Release", "bin", "clang.exe"),
            path.join(llvmBuildDir, "Release", "bin", "llvm-link.exe"),
            path.join(llvmBuildDir, "Release", "bin", "llc.exe"),
            path.join(binaryenBuildDir, "bin", "s2wasm.exe"),
            path.join(binaryenBuildDir, "bin", "wasm-opt.exe"),
            path.join(binaryenBuildDir, "bin", "wasm-as.exe"),
            path.join(binaryenBuildDir, "bin", "wasm-dis.exe"),
            path.join(binaryenBuildDir, "bin", "wasm-merge.exe")
        ];

    });

else p = p.then(() => 

    // Build all of LLVM

    util.run(process.env.MAKE || "make", [

        "clang", "llvm-link", "llc"/*, "lld"*/,
        "-j" + cpus

    ], { cwd: llvmBuildDir })).then(() =>

    // Build all of binaryen

    util.run(process.env.MAKE || "make", [

        "s2wasm", "wasm-opt", "wasm-as", "wasm-dis", "wasm-merge",
        "-j" + cpus

    ], { cwd: binaryenBuildDir })).then(() => {

        return [

            path.join(llvmBuildDir, "bin", "clang"),
            path.join(llvmBuildDir, "bin", "llvm-link"),
            path.join(llvmBuildDir, "bin", "llc"),
            path.join(binaryenBuildDir, "bin", "s2wasm"),
            path.join(binaryenBuildDir, "bin", "wasm-opt"),
            path.join(binaryenBuildDir, "bin", "wasm-as"),
            path.join(binaryenBuildDir, "bin", "wasm-dis"),
            path.join(binaryenBuildDir, "bin", "wasm-merge")

        ];

    });

// Create archive

p.then((files) => new Promise((resolve, reject) => {

    var textFiles = [
        path.join(util.basedir, "tools/bin/LICENSE-BINARYEN"),
        path.join(util.basedir, "tools/bin/LICENSE-LLVM")
    ];

    var output = fs.createWriteStream(path.join(util.basedir, "tools", "bin", "tools-" + process.platform + "-" + process.arch + (isWindows ? ".zip" : ".tar.gz")));
    var archive = isWindows
        ? archiver("zip", { zlib: { level: 9 } })
        : archiver("tar", { gzip: true, gzipOptions: { level: 9 } });
    output.on("error", reject);
    archive.on("error", reject);
    output.on("close", () => resolve());
    archive.pipe(output);
    files.forEach(file => archive.append(fs.createReadStream(file), { name: path.basename(file), mode: 0755 }));
    textFiles.forEach(file => archive.append(fs.createReadStream(file), { name: path.basename(file) }));
    archive.finalize();

})).then(util.defaultSuccess, util.defaultCallback);
