# Description:
#   Respond to requests for html tag references
#
# Commands:
#   !html html <tag>
#

module.exports = (robot) ->
  docsUrl = 'https://regexone.com'

  referenceLink = (res)->
    keywordName = res.match[1]?.replace(' ', '')

    response = "Check out " + docsUrl

    res.send response

  robot.hear /^!regex (\w+)/i, (res) -> referenceLink(res)
