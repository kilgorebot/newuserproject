# Description:
#   Respond to requests for html tag references
#
# Commands:
#   !reference html <tag>
#

module.exports = (robot) ->
  docsUrl = 'http://w3schools.com/tags/'
  htmlSuffix = '.asp'
  pagePrefix = 'tag_'

  printApiLink = (res)->
    referenceName = res.match[1]
    keywordName = res.match[2]
    propertyOrMethodValue = res.match[3]?.replace('#', '')

    response = "Check out " + docsUrl + referenceName
    response += keywordName if keywordName?
    response += htmlSuffix
    response += pagePrefix + propertyOrMethodValue if propertyOrMethodValue?
    res.send response

  robot.hear /^lapi (\w*)(\.\w*)?(\#\w*)/i, (res) -> printApiLink(res)
