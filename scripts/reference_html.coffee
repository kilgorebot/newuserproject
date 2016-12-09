# Description:
#   Respond to requests for html tag references
#
# Commands:
#   !html html <tag>
#

module.exports = (robot) ->
  docsUrl = 'http://w3schools.com/tags/'
  htmlSuffix = '.asp'
  pagePrefix = 'tag_'

  referenceLink = (res)->
    #referenceName = res.match[1]
    keywordName = res.match[1]?.replace(' ', '')
    #propertyOrMethodValue = res.match[3]?.replace('#', '')

    response = "Check out " + docsUrl + pagePrefix
    response += keywordName
    response += htmlSuffix

    res.send response

  robot.hear /^!html <(\w+)?(\s\w*)?(\w*)/i, (res) -> referenceLink(res)
