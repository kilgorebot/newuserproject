# Description:
#   Respond to requests for html tag references
#
# Commands:
#   !regex
#

module.exports = (robot) ->
  docsUrl = 'https://regexone.com'

  referenceLink = (res)->
    response = "Check out " + docsUrl

    res.send response

  robot.hear /^!regex ?(.*)/i, (res) -> referenceLink(res)
