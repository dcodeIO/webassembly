<h1><p align="center"><img src="https://github.com/WebAssembly/web-assembly-logo/raw/master/dist/logo/web-assembly-logo-256px.png" alt="webassembly" /><br />for node.js</p></h1>

An **experimental**, minimal toolkit and runtime on top of node to produce and run [WebAssembly](http://webassembly.org) modules.

To run compiled .wasm files, you'll either need a recent version of your browser [with WebAssembly enabled](https://developer.mozilla.org/en-US/docs/WebAssembly#Browser_compatibility) or [node.js 8 nightly](https://nodejs.org/download/nightly/) - but you probably already know that.

[![npm](https://img.shields.io/npm/v/webassembly.svg)](https://www.npmjs.com/package/webassembly) [![build status](https://travis-ci.org/dcodeIO/webassembly.svg?branch=master)](https://travis-ci.org/dcodeIO/webassembly)

Motivation
----------

Prevalent WebAssembly tooling provides compilation to WebAssembly from a C/C++ perspective with a focus on porting existing code. Because of that, it usually produces a lot of extra code that isn't needed alongside a module that is solely trying to complement JavaScript. This package, on the other hand, tries to keep the support library and the generated modules as small as possible by specifically targeting WebAssembly (in the browser) only.

PRs welcome!

Example
-------

Write your module as a C program:

```c
// program.c
#include <webassembly.h>

export int add(int a, int b) {
  return a + b;
}
```

Compile it to wasm:

```
$> wa-compile -o program.wasm program.c
```

Run it:

```js
// program.js
require("webassembly")
  .load("program.wasm")
  .then(module => {
    console.log("1 + 2 = " + module.exports.add(1, 2));
  });
```

Installation
------------

```
$> npm install webassembly
```

Installing the package automatically downloads prebuilt binaries for either Windows (`win32-x64`) or Linux (`linux-x64`, you might have to install `libstdc++-4.9-dev`).

Toolkit
-------

WebAssembly functionality is provided by a [C header](https://github.com/dcodeIO/webassembly/blob/master/include/webassembly.h). A small [JavaScript support library](https://github.com/dcodeIO/webassembly/tree/master/src) ([distributions](https://github.com/dcodeIO/webassembly/tree/master/dist)) provides the browser runtime.

* Use the `import` and `export` defines to mark your imports and exports.
* console methods become `console_log` etc. and Math becomes `Math_abs` etc.

Console functions accept the following string substitutions with variable arguments:

| Subst. | C type                      | Description
|--------|-----------------------------|-------------------------
| `%i`   | `int` / `int32_t`           | Signed 32 bit integer
| `%u`   | `unsigned int` / `uint32_t` | Unsigned 32 bit integer
| `%f`   | `float`                     | 32 bit float
| `%d`   | `double`                    | 64 bit double
| `%s`   | `char *`                    | String (zero terminated)

For now, math is (mostly) performed on 64 bit IEEE754 floating point operands as provided by the browser.

C features available out of the box:

* Various standard types (integers, booleans, floats) and corresponding constants
* `malloc`, `free`, `realloc` and `calloc` (dlmalloc) on top of a custom `sbrk`
* `memcpy`, `memmove`, `memalign` and `memset` (musl)

On the JS side of things, the [memory instance](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory) (`module.env.memory`) has additional mixed in utility methods for convenient memory access:

* **getInt(ptr: `number`): `number`** gets the signed 32 bit integer at the specified address (aligned to 4 bytes)
* **getUint(ptr: `number`): `number`** gets the unsigned 32 bit integer at the specified address (aligned to 4 bytes)
* **getFloat(ptr: `number`): `number`** gets the 32 bit float at the specified address (aligned to 4 bytes)
* **getDouble(ptr: `number`): `number`** gets the 64 bit double at the specified address (aligned to 8 bytes)
* **getString(ptr: `number`): `string`** gets the zero terminated string literal at the specified address

Command line
------------

The `wa-compile` utility compiles C code to a WebAssembly module.

```
  -o, --out      Specifies the .wasm output file. Defaults to input file with .wasm extension.
  -d, --debug    Prints debug information to stderr.

  Module configuration:

  -s, --stack    Specifies the stack size. Defaults to 10000.
  -m, --main     Calls the specified function on start.

usage: wa-compile [options] program.c
```

The `wa-disassemble` utility decompiles a WebAssembly module to text format.

```
  -o, --out      Specifies the .wast output file. Defaults to input file with .wast extension.
  -d, --debug    Prints debug information to stderr.

usage: wa-disassemble [options] program.wasm
```

The `wa-assemble` utility assembles WebAssembly text format to a module.

```
  -o, --out      Specifies the .wasm output file. Defaults to input file with .wasm extension.
  -d, --debug    Prints debug information to stderr.

usage: wa-assemble [options] program.wast
```

Command line utilites can also be used programmatically by providing command line arguments and a callback to their respective `main` functions:

```js
var compiler = require("webassembly/cli/compiler"); // or assembler, disassembler

compiler.main([
  "-o", "program.wasm",
  "program.c"
], function(err, filename) {
  if (err)
    throw err;
  console.log("saved to: " + filename);
});
```

IDE suggestions
---------------

I am using:

* [Visual Studio Code](https://code.visualstudio.com/) (example [Ctrl+Shift+B task](https://github.com/dcodeIO/webassembly/blob/master/.vscode/tasks.json))
* with [C/C++ for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) (example [config](https://github.com/dcodeIO/webassembly/blob/master/.vscode/c_cpp_properties.json))

But anything should work as long as you are able to configure it.

License: [BSD 3-Clause License](https://opensource.org/licenses/BSD-3-Clause). Includes parts of [musl](http://www.musl-libc.org/) ([MIT License](https://opensource.org/licenses/MIT)) and [binaryen](https://github.com/WebAssembly/binaryen) ([Apache License, Version 2.0](https://opensource.org/licenses/Apache-2.0)). WebAssembly logo by Carlos Baraza ([CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)).
