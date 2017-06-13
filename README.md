<h1><p align="center"><img src="https://github.com/WebAssembly/web-assembly-logo/raw/master/dist/logo/web-assembly-logo-256px.png" alt="webassembly" /><br />for node.js</p></h1>

An **experimental**, minimal toolkit and runtime on top of node to produce and run [WebAssembly](http://webassembly.org) modules.

To *run* compiled WebAssembly modules, you'll either need a recent version of your browser [with WebAssembly enabled](http://caniuse.com/#feat=wasm) or node.js 8 - but you probably already know that. For development, node.js 6 upwards is sufficient.

[![npm](https://img.shields.io/npm/v/webassembly.svg)](https://www.npmjs.com/package/webassembly) [![build status](https://travis-ci.org/dcodeIO/webassembly.svg?branch=master)](https://travis-ci.org/dcodeIO/webassembly) [![Code Climate](https://codeclimate.com/github/dcodeIO/webassembly/badges/gpa.svg)](https://codeclimate.com/github/dcodeIO/webassembly) [![npm downloads](https://img.shields.io/npm/dm/webassembly.svg)](https://www.npmjs.com/package/webassembly)

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
$> wa compile -o program.wasm program.c
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

Installing the package automatically downloads prebuilt binaries for either Windows (`win32-x64`) or Linux (`linux-x64`).

Toolkit
-------

WebAssembly functionality is provided by a [C header](https://github.com/dcodeIO/webassembly/blob/master/include/webassembly.h). A small [JavaScript support library](https://github.com/dcodeIO/webassembly/tree/master/src) ([distributions](https://github.com/dcodeIO/webassembly/tree/master/dist)) provides the browser runtime.

Calling **webassembly.load(file: `string`, [options: `LoadOptions`]): `Promise<IModule>`** returns a promise for a module instance:

* `module.exports` contains exported functions
* `module.memory` references the memory instance
* `module.env` references the environment used

Available `LoadOptions`:

* **imports: `Object`** specifies imported functions
* **initialMemory: `number`** specifies the initial amount of memory in 64k pages (defaults to `1`)
* **maximumMemory: `number`** specifies the maximum amount of memory in 64k pages that the module is allowed to grow to (optional)

C features available out of the box:

* Stripped down standard C library based on musl and dlmalloc
* `import` and `export` defines to mark your imports and exports
* Browser bindings for `console` and `Math` (i.e `console.log` becomes `console_log`)

Console functions accept the following string substitutions with variable arguments:

| Subst.     | C type                      | Description
|------------|-----------------------------|-------------------------
| `%d`, `%i` | `int` / `int32_t`           | Signed 32 bit integer
| `%u`       | `unsigned int` / `uint32_t` | Unsigned 32 bit integer
| `%f`       | `float`                     | 32 bit float
| `%lf`      | `double`                    | 64 bit double
| `%s`       | `char *`                    | String (zero terminated)

Browser `Math` (i.e. `Math_sqrt`) as well as standard C `math.h` can be used.

On the JS side of things, the [memory instance](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory) (`module.memory`) has additional mixed in utility methods for convenient memory access:

* **memory.getInt(ptr: `number`): `number`** gets the signed 32 bit integer at the specified address (aligned to 4 bytes)
* **memory.getUint(ptr: `number`): `number`** gets the unsigned 32 bit integer at the specified address (aligned to 4 bytes)
* **memory.getFloat(ptr: `number`): `number`** gets the 32 bit float at the specified address (aligned to 4 bytes)
* **memory.getDouble(ptr: `number`): `number`** gets the 64 bit double at the specified address (aligned to 8 bytes)
* **memory.getString(ptr: `number`): `string`** gets the zero terminated string literal at the specified address

The underlying typed array views are also available for direct use. Just make sure to access them directly on the memory instance because they are updated when the program memory grows.

* **memory.U8: `Uint8Array`**
* **memory.U32: `Uint32Array`**
* **memory.S32: `Int32Array`**
* **memory.F32: `Float32Array`**
* **memory.F64: `Float64Array`**

Command line
------------

The `wa-compile` utility (also callable as `wa compile`, `wa comp`, `wa c`) compiles C code to a WebAssembly module.

```
  -o, --out        Specifies the .wasm output file. Defaults to stdout.
  -d, --debug      Prints debug information to stderr.
  -q, --quiet      Suppresses informatory output.

  Module configuration:

  -O, --optimize   Optimizes the output file and removes dead code.
  -s, --stack      Specifies the stack size. Defaults to 10000.
  -m, --main       Executes the specified function on load.
  -D, --define     Defines a macro.

  Includes and libraries:

  -I, --headers    Includes C headers from the specified directories.
  -i, --include    Includes the specified source files.
  -l, --link       Links in the specified libraries after compilation.
  -b, --bare       Does not include the runtime library.

usage: wa-compile [options] program.c
```

The `wa-link` utility (also callable as `wa link`, `wa ln`, `wa l`) linkes multiple WebAssembly modules to one.

```
  -o, --out      Specifies the .wasm output file. Defaults to write to stdout.
  -d, --debug    Prints debug information to stderr.
  -q, --quiet    Suppresses informatory output.

  Module configuration:

  -O, --optimize   Performs link-time optimizations.

usage: wa-link [options] program1.wasm program2.wasm
```

The `wa-disassemble` utility (also callable as `wa disassemble`, `wa dis`, `wa d`) decompiles a WebAssembly module to text format.

```
  -o, --out      Specifies the .wast output file. Defaults to stdout.
  -d, --debug    Prints debug information to stderr.
  -q, --quiet    Suppresses informatory output.

usage: wa-disassemble [options] program.wasm
```

The `wa-assemble` utility (also callable as `wa assemble`, `wa as`, `wa a`) assembles WebAssembly text format to a module.

```
  -o, --out        Specifies the .wasm output file. Defaults to stdout.
  -d, --debug      Prints debug information to stderr.
  -q, --quiet      Suppresses informatory output.

  Module configuration:

  -O, --optimize   Optimizes the output file and removes dead code.

usage: wa-assemble [options] program.wast
```

The `wa` utility proxies to the above, in case you don't like typing `-`.

Command line utilites can also be used programmatically by providing command line arguments and a callback to their respective `main` functions:

```js
var compiler = require("webassembly/cli/compiler");
               // or assembler, disassembler, linker
compiler.main([
  "-o", "program.wasm",
  "program.c"
], function(err, filename) {
  if (err)
    throw err;
  console.log("saved to: " + filename);
});
```

IDE integration
---------------

Anything should work as long as you are able to configure it, even notepad.

I am using:

* [Visual Studio Code](https://code.visualstudio.com/) (example [Ctrl+Shift+B task](https://github.com/dcodeIO/webassembly/blob/master/.vscode/tasks.json))
* with [C/C++ for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) (example [config](https://github.com/dcodeIO/webassembly/blob/master/.vscode/c_cpp_properties.json))

---

License: [MIT License](https://opensource.org/licenses/MIT).

Includes parts of

* [musl](http://www.musl-libc.org/) ([MIT License](https://opensource.org/licenses/MIT))
* [dlmalloc](http://g.oswego.edu/dl/html/malloc.html) ([CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/))
* [binaryen](https://github.com/WebAssembly/binaryen) ([Apache License, Version 2.0](https://opensource.org/licenses/Apache-2.0))
* [emscripten](https://kripken.github.io/emscripten-site/) ([NCSA](https://opensource.org/licenses/NCSA) / [MIT License](https://opensource.org/licenses/MIT))

WebAssembly logo by [Carlos Baraza](https://github.com/carlosbaraza) ([CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)).
