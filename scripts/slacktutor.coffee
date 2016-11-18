# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

   robot.hear /badger/i, (res) ->
      res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  
   robot.respond /open the (.*) doors/i, (res) ->
      doorType = res.match[1]
      if doorType is "pod bay"
        res.reply "I'm afraid I can't let you do that."
      else
        res.reply "Opening #{doorType} doors"

    robot.respond /(.*)desktop notifications(.*)/i, (res) ->
      res.reply "desktop notifications are cool"
      res.reply "duhaiuhasdfbuasfhasifbuiahf"
      
    robot.respond /(.*)testing features(.*)/i, (res) ->
      res.reply "ok"
      res.reply "so what are you doing exactly?"
      res.reply "894ef3ac23ba45"
