// run this file using `node log-test.js`

require("coffee-script/register")

var logger = require("./lib/log")
var log = logger.log
var timeLog = logger.timeLog

timeLog("Started", 3)

log("Default(Log)")

log("Error!", 0)

log("Warn!", 1)

log("Log", 2)

log("Debugging", 3)

timeLog("Finished", 3)