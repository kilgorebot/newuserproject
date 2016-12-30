# Description:
#   Respond to requests for html tag references
#
# Commands:
#   !regularexpression
#

module.exports = (robot) ->
  docsUrl = 'https://regexone.com'

  referenceLink = (res)->
    response = "Check out " + docsUrl

    res.send response

  robot.hear /^!regularexpression ?(.*)/i, (res) -> referenceLink(res)
