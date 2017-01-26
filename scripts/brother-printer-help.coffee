# This is where you can get assistance for Brother printers.
# We are always adding things to the robot

module.exports = (robot) ->

robot.respond /(.*)brother DCP 165C(.*)/i, (res) ->
      res.reply "Brother DCP 165C help test"
      
    robot.respond /(.*)brother DCP 375CW(.*)/i, (res) ->
      res.reply "Brother DCP 375CW help test"
      
    robot.respond /(.*)testing codeshare(.*)/i, (res) ->
      res.reply "it works"
      
    robot.respond /(.*)testing manual edits(.*)/i, (res) ->
      res.reply "it works"
