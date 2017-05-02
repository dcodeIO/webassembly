#!/bin/bash

dp="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Configuring LLVM/Clang ..."

test -e "$dp/llvm/tools/clang" || ln -s "$dp/clang" "$dp/llvm/tools/clang"
test -e "$dp/llvm/projects/compiler-rt" || ln -s "$dp/compiler-rt" "$dp/llvm/projects/compiler-rt"
test -e "$dp/llvm/build" || mkdir "$dp/llvm/build"
cd "$dp/llvm/build"
cmake -DLLVM_TARGETS_TO_BUILD="" -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="WebAssembly" -DCMAKE_BUILD_TYPE="Release" ..
cd "$dp"

echo "Configuring binaryen ..."

test -e "$dp/binaryen/build" || mkdir "$dp/binaryen/build"
cd "$dp/binaryen/build"
cmake -DCMAKE_BUILD_TYPE="Release" ..

echo "Done."
