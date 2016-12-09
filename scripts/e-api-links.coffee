# Description:
#   Respond to requests for different Ember classes with links from the Ember API
#
# Commands:
#   !ember <Class Name>(#methodName optional) - Prints out a link to the Class, or method name mentioned
#
# Authors:
#   brandonjmcay
#   iankilgore

module.exports = (robot) ->
  docsUrl = 'http://emberjs.com/api/classes/'
  htmlSuffix = '.html'
  methodPrefix = '#method_'

  printApiLink = (res)->
    className = res.match[1]
    subClassName = res.match[2]
    methodValue = res.match[3]?.replace('#', '')

    response = "Check out " + docsUrl + className
    response += subClassName if subClassName?
    response += htmlSuffix
    response += methodPrefix + methodValue if methodValue?
    res.send response



  robot.hear /!ember (\w*)(\.\w*)?(\#\w*)/i, (res) -> printApiLink(res)
