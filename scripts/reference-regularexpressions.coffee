# Description:
#   Respond to requests for html tag references
#
# Commands:
#   !html html <tag>
#

module.exports = (robot) ->
  docsUrl = 'https://regexone.com/lesson'
  htmlSuffix = '.asp'
  pagePrefix = 'tag_'

  referenceLink = (res)->
    keywordName = res.match[1]?.replace(' ', '')

    response = "Check out " + docsUrl + pagePrefix
    response += keywordName
    response += htmlSuffix

    res.send response

  robot.hear /^!html <(\w+)/i, (res) -> referenceLink(res)
