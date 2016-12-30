# Description:
#   Respond to requests for css tag references
#
# Commands:
#   !css css <tag>
#

module.exports = (robot) ->
  docsUrl = 'http://w3schools.com/css/'
  cssSuffix = '.asp'
  pagePrefix = 'css_'

  referenceLink = (res)->
    keywordName = res.match[1]?.replace(' ', '')

    response = "Check out " + docsUrl + pagePrefix
    response += keywordName
    response += cssSuffix

    res.send response

  robot.hear /^!css (\w+)/i, (res) -> referenceLink(res)
