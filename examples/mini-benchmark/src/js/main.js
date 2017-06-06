const wasm = require("webassembly");
const numOne = 1;
const numTwo = 2;
const bench = 1000000;

(async function() {
  try {
    const { exports: { add } } = await wasm.load("program.wasm");

    let start = new Date().getTime();
    for (let e = 0; e < bench; e++) {
      const result = numOne + numTwo;
    }
    let end = new Date().getTime();
    const timeOne = end - start;

    start = new Date().getTime();
    for (e = 0; e < bench; e++) {
      const result = add(numOne, numTwo);
    }
    end = new Date().getTime();
    const timeTwo = end - start;

    if (timeOne > timeTwo) {
      alert(`WASM was faster by ${Math.round(timeOne / timeTwo * 100)}%`);
    } else {
      alert(`JavaScript was faster by ${Math.round(timeTwo / timeOne * 100)}%`);
    }
  } catch (err) {
    alert("Erroring loading wasm");
  }
})();
