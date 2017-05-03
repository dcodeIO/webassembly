@ECHO OFF

SETLOCAL
SET prev=%cd%

echo Configuring LLVM/Clang ...

IF NOT EXIST "%~dp0llvm\tools\clang" mklink /D "%~dp0llvm\tools\clang" "%~dp0clang"
IF NOT EXIST "%~dp0llvm\projects\compiler-rt" mklink /D "%~dp0llvm\projects\compiler-rt" "%~dp0compiler-rt"
rem IF NOT EXIST "%~dp0llvm\projects\libcxx" mklink /D "%~dp0llvm\projects\libcxx" "%~dp0libcxx"
rem IF NOT EXIST "%~dp0llvm\projects\libcxxabi" mklink /D "%~dp0llvm\projects\libcxxabi" "%~dp0libcxxabi"
rem IF NOT EXIST "%~dp0llvm\projects\libunwind" mklink /D "%~dp0llvm\projects\libunwind" "%~dp0libunwind"
IF NOT EXIST "%~dp0llvm\build" mkdir "%~dp0llvm\build"
cd "%~dp0llvm\build"
cmake^
 -DLLVM_TARGETS_TO_BUILD=""^
 -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="WebAssembly"^
 -DCMAKE_BUILD_TYPE="Release" ..
cd "%~dp0"

echo Configuring binaryen ...

IF NOT EXIST "%~dp0binaryen\build" mkdir "%~dp0binaryen\build"
cd "%~dp0binaryen\build"
cmake -DCMAKE_BUILD_TYPE="Release" ..

cd "%prev%"
echo Done.
