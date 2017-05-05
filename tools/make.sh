#!/bin/bash

dp="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Building LLVM/Clang ..."

cd "%~dp0llvm\build"
make -j$(nproc) clang

echo "Building binaryen ..."

cd "%~dp0binaryen\build"
make -j$(nproc) s2wasm
make -j$(nproc) wasm-dis
make -j$(nproc) wasm-opt
make -j$(nproc) wasm-merge

echo "Archiving ..."

cd "%~dp0"
tar --numeric-owner --no-same-owner --transform 's,.*/,,g' -zchf bin/tools-linux-x64.tar.gz\
 llvm/build/bin/clang\
 binaryen/build/bin/s2wasm\
 binaryen/build/bin/wasm-dis\
 binaryen/build/bin/wasm-opt\
 binaryen/build/bin/wasm-merge\
 bin/LICENSE-BINARYEN\
 bin/LICENSE-LLVM

echo "Done."
