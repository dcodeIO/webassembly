@ECHO OFF

SETLOCAL
SET prev=%cd%

set msbuild.exe=
for /D %%D in (%SYSTEMROOT%\Microsoft.NET\Framework\v4*) do set msbuild.exe=%%D\MSBuild.exe
if not defined msbuild.exe echo error: can't find msbuild.exe & goto :eof
if not exist "%msbuild.exe%" echo error: %msbuild.exe%: not found & goto :eof

echo Building LLVM/Clang ...

cd "%~dp0llvm\build"
"%msbuild.exe%" tools\clang\tools\driver\clang.vcxproj /p:Configuration="Release"

echo Building binaryen ...

cd "%~dp0binaryen\build"
"%msbuild.exe%" s2wasm.vcxproj /p:Configuration="Release"
"%msbuild.exe%" wasm-dis.vcxproj /p:Configuration="Release"
"%msbuild.exe%" wasm-opt.vcxproj /p:Configuration="Release"

cd "%~dp0"

powershell -nologo -noprofile -command Compress-Archive^
 -LiteralPath^
 llvm\build\Release\bin\clang.exe,^
 binaryen\build\bin\s2wasm.exe,^
 binaryen\build\bin\wasm-dis.exe,^
 binaryen\build\bin\wasm-opt.exe,^
 bin\LICENSE-LLVM,^
 bin\LICENSE-BINARYEN^
 -DestinationPath^
 bin\tools-win32-x64

cd "%prev%"
echo Done.
