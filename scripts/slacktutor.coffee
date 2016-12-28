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

    #robot.respond /(.*)messag(.*)/i, (res) ->
      #messageType = res.match[1]
      #if messageType is  " private " 
        #res.reply "Private messages are called direct messages in slack."
        #else
      #res.reply "Direct messages are useful if you want to have a private conversation with someone, it's good if you have lots of people at your company and you don't want to say it in front of everybody."

    robot.respond /(.*)messag(.*)/i, (res) ->
      res.reply "Direct messages are useful if you want to have a private conversation with someone, it's good if you have lots of people at your company and you don't want to say it in front of everybody."
      doorType = res.match[1]
      #if doorType /(.*)private(.*)/i
      #res.reply "Private messages are called direct messages in slack."
        
    robot.respond /(.*)get notifications (.*)phone/i, (res) ->
      res.reply "yes, there is a slack app for iOS and Android, if you search in the app store or google play store 'slack', it should be there."
      
    robot.respond /(.*)slack app(.*)/i, (res) ->
      res.reply "yes, there is a slack app for iOS and Android, if you search in the app store or google play store 'slack', it should be there."

    robot.respond /(.*)pin(.*)message(.*)/i, (res) ->
      res.reply "the way you pin a message is by going to the corner of the message and clicking the three dots icon and then clicking 'pin to [channel name]'"

    robot.respond /(.*)help(.*)/i, (res) ->
      res.reply "Need help?  To go to the help menu in slack, go to the three dots icon in the upper right hand corner and select 'help' from the pulldown menu."
