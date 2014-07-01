###
  About Modules:
  http://nodejs.org/api/modules.html
  http://openmymind.net/2012/2/3/Node-Require-and-Exports/
###

chalk = require('chalk')


time = ->
  (new Date).toLocaleTimeString()

log = (msg, level=2, includeTime=false) ->
  res = ""
  if includeTime
    res += chalk.gray(time()) + chalk.white(" - ")
  res += switch level
    when 0
      chalk.bold.red(msg)
    when 1
      chalk.yellow(msg)
    when 2
      chalk.white(msg)
    else
      chalk.green(msg)
  console.log(res)

timeLog = (msg, level=2) ->
  log(msg,level,true)

exports.log = log
exports.timeLog = timeLog