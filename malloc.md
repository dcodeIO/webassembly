    # clone the webassembly repo
    init submodules
    update --recursive submodules
    # from root of repo, run node lib/build.js
    # this should build webassembly.bc
    # modified webassembly.bc only has malloc

    # build malloc-only lib
    node ./lib/build.js;

    # convert llvm bitcode to wat then wat
    ./tools/bin/linux-x64/llc -march=wasm32 -filetype=asm -asm-verbose=false -thread-model=single -data-sections -function-sections -o ./lib/webassembly.s ./lib/webassembly.bc;
    ./tools/bin/linux-x64/s2wasm --import-memory -o ./lib/webassembly.wat ./lib/webassembly.s;

    # for buggy s2wasm/lcc, this patch adds malloc/free export to wat module
    patch -p0 lib/webassembly.wat < lib/webassembly.patch

    # assemble wat to wasm
    node ./bin/wa-assemble -o ./lib/webassembly.wasm ./lib/webassembly.wat
