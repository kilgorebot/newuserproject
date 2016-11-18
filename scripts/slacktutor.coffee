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

    robot.respond /(.*)desktop notification(.*)/i, (res) ->
      res.reply "When you enable desktop nofications, a window will pop up in the corner letting you know that there is a new message if you are in a different tab in your browser."
      
    robot.respond /(.*)what are channel(.*)/i, (res) ->
      res.reply "Channels in slack are a way to organize conversations such as keeping it related to a single topic in that particular channel."

    robot.respond /(.*)messag(.*)/i, (res) ->
      messageType = res.match[1]
      if messageType is "private "
        res.reply "Private messages are called direct messages in slack."
      res.reply "Direct messages are useful if you want to have a private conversation with someone, it's good if you have lots of people at your company and you don't want to say it in front of everybody."
