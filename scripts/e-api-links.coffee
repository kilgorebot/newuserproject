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
    hasMethod = /(\w)/i.test(res.match[4])
    className = res.match[1]
    subClassName = res.match[2]
    methodValue += res.match[4] 
    response = "Check out " + docsUrl + className
    response += subClassName if subClassName?
    response += htmlSuffix
    response += methodPrefix if hasMethod
    response += methodValue if hasMethod
    res.send response



  robot.hear /^!ember (\w*)?(\.\w*)?(\.)?(\w*)/i, (res) -> printApiLink(res)
