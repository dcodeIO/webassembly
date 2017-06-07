import { load } from "webassembly";
const numOne = 1;
const numTwo = 2;
const bench = 1000000;

/**
 * Add two values one million times
 * in both JavaScript and WebAssembly.
 * Display results when done.
 */
async function benchmark() {
  try {
    /**
     * Desctruct add function from WebAssembly.
     */
    const { exports: { add } } = await load("program.wasm");

    /**
     * JavaScript benchmark.
     */
    let start = new Date().getTime();
    for (let e = 0; e < bench; e++) {
      const result = numOne + numTwo;
    }
    let end = new Date().getTime();
    const timeOne = end - start;

    /**
     * WebAssembly benchmark.
     */
    start = new Date().getTime();
    for (let e = 0; e < bench; e++) {
      const result = add(numOne, numTwo);
    }
    end = new Date().getTime();
    const timeTwo = end - start;

    /**
     * Display results.
     */
    const result = (first, second) => Math.round((first / second - 1) * 100);

    if (timeOne > timeTwo) {
      alert(`WASM was faster by ${result(timeOne, timeTwo)}%`);
    } else {
      alert(`JavaScript was faster by ${result(timeTwo, timeOne)}%`);
    }
  } catch (err) {
    alert("WebAssembly could not be loaded.");
  }
}

benchmark();
