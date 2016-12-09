# Description:
#   Respond to requests for html tag references
#
# Commands:
#   !sql statement
#

module.exports = (robot) ->
  docsUrl = 'http://www.w3schools.com/sql/'
  sqlSuffix = '.asp'
  pagePrefix = 'sql_'

  referenceLink = (res)->
    keywordName = res.match[1]?.replace(' ', '')

    response = "Check out " + docsUrl + pagePrefix
    response += keywordName
    response += sqlSuffix

    res.send response

  robot.hear /^!sql (\w*)/i, (res) -> referenceLink(res)
