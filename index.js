var fs = require('fs')

// https://github.com/mikeal/request
// var request = require('request')

var jadeToWire = require('jade-to-wire')

var wireCode = fs.readFileSync("./test.wire", "utf8")

jadeToWire.toJade(wireCode, function (jade) {
  console.log(jade)
})