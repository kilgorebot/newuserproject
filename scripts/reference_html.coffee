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
    keywordName = res.match[2]?.replace(' ', ''
    propertyOrMethodValue = res.match[3]?.replace('#', '')

    response = "Check out " + docsUrl + pagePrefix
    response += keywordName if keywordName?
    response += htmlSuffix

    res.send response

  robot.hear /^!reference (\w*)(\s\w*)?(\w*)/i, (res) -> printApiLink(res)
