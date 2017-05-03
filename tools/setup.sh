#!/bin/bash

dp="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Configuring LLVM/Clang ..."

test -e "$dp/llvm/tools/clang" || ln -s "$dp/clang" "$dp/llvm/tools/clang"
test -e "$dp/llvm/projects/compiler-rt" || ln -s "$dp/compiler-rt" "$dp/llvm/projects/compiler-rt"
test -e "$dp/llvm/projects/libcxx" || ln -s "$dp/libcxx" "$dp/llvm/projects/libcxx"
test -e "$dp/llvm/projects/libcxxabi" || ln -s "$dp/libcxxabi" "$dp/llvm/projects/libcxxabi"
test -e "$dp/llvm/projects/libunwind" || ln -s "$dp/libunwind" "$dp/llvm/projects/libunwind"
test -e "$dp/llvm/build" || mkdir "$dp/llvm/build"
cd "$dp/llvm/build"
cmake\
 -DCLANG_DEFAULT_CXX_STDLIB="libc++"\
 -DCLANG_DEFAULT_RTLIB="compiler-rt"\
 -DLLVM_DEFAULT_TARGET_TRIPLE="x86_64-pc-linux-musl"\
 -DLIBCXXABI_TARGET_TRIPLE="x86_64-pc-linux-musl"\
 -DLIBUNWIND_TARGET_TRIPLE="x86_64-pc-linux-musl"\
 -DDEFAULT_SYSROOT="../../../lib/musl"\
 -DLLVM_TARGETS_TO_BUILD="X86"\
 -DLIBCXXABI_USE_COMPILER_RT="ON"\
 -DLIBCXXABI_USE_LLVM_UNWINDER="ON"\
 -DLIBCXX_HAS_MUSL_LIBC="ON"\
 -DLIBCXX_USE_COMPILER_RT="ON"\
 -DLLVM_ENABLE_LIBCXX="ON"\
 -DLLVM_TARGETS_TO_BUILD=""\
 -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="WebAssembly"\
 -DCMAKE_BUILD_TYPE="Release" ..
cd "$dp"

echo "Configuring binaryen ..."

test -e "$dp/binaryen/build" || mkdir "$dp/binaryen/build"
cd "$dp/binaryen/build"
cmake -DCMAKE_BUILD_TYPE="Release" ..

echo "Done."
