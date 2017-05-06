#!/bin/bash

dp="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Configuring LLVM/Clang ..."

test -e "$dp/llvm/tools/clang" || ln -s "$dp/clang" "$dp/llvm/tools/clang"
test -e "$dp/llvm/tools/lld" || ln -s "$dp/lld" "$dp/llvm/tools/lld"
test -e "$dp/llvm/projects/compiler-rt" || ln -s "$dp/compiler-rt" "$dp/llvm/projects/compiler-rt"
test -e "$dp/llvm/build" || mkdir "$dp/llvm/build"
cd "$dp/llvm/build"

test -e "/opt/cmake/bin/cmake" && CMAKE="/opt/cmake/bin/cmake" || CMAKE="cmake"
$CMAKE\
 -DCMAKE_EXE_LINKER_FLAGS="-static-libgcc -static-libstdc++"\
 -DCMAKE_BUILD_TYPE="Release"\
 -DLLVM_TARGETS_TO_BUILD=""\
 -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="WebAssembly"\
 -DLLVM_DEFAULT_TARGET_TRIPLE="wasm32-unknown-unknown"\
 ..

cd "$dp"

echo "Configuring binaryen ..."

test -e "$dp/binaryen/build" || mkdir "$dp/binaryen/build"
cd "$dp/binaryen/build"

$CMAKE\
 -DCMAKE_EXE_LINKER_FLAGS="-static-libgcc -static-libstdc++"\
 -DCMAKE_BUILD_TYPE="Release"\
 ..

echo "Done."
