const htmlWebpackPlugin = require("html-webpack-plugin");

module.exports = {
  entry: `${process.cwd()}/src/js/main.js`,
  output: {
    path: `${process.cwd()}/dist`,
    filename: "main.js"
  },
  plugins: [new htmlWebpackPlugin({ title: "wasm" })],
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules\/(?!(webassembly|ANOTHER-ONE)\/).*/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["es2015", "es2016", "es2017"],
            plugins: ["transform-runtime"]
          }
        }
      }
    ]
  }
};
