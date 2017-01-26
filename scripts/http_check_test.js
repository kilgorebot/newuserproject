// Description:
//   
//
// Dependencies:
//   None
//
// Configuration:
//   None
//
// Commands:
//  
/*
(function() {
  module.exports = function(robot) {
    var docsUrl, pagePrefix, referenceLink, sqlSuffix;
    docsUrl = 'http://www.w3schools.com/sql/';
    sqlSuffix = '.asp';
    pagePrefix = 'sql_';
    referenceLink = function(res) {
      var keywordName, ref, response;
      keywordName = (ref = res.match[1]) != null ? ref.replace(' ', '') : void 0;
      response = "Check out " + docsUrl + pagePrefix;
      response += keywordName;
      response += sqlSuffix;
      return res.send(response);
    };
    return robot.hear(/^!sql (\w*)/i, function(res) {
      return referenceLink(res);
    });
  };
}).call(this);
*/
module.exports = function(robot) {

  robot.hear(/^!jquery (\w*)/i, function(msg){
    var docsUrl = 'http://www.w3schools.com/jquery/';
    var pageSuffix = '.asp';
    var pagePrefix = 'event_';
    var referenceLink;
    referenceLink = function(msg) {
      var keywordName;
      var ref;
      var responseUrl;
      keywordName = (ref = msg.match[1]) != null ? ref.replace(' ', '') : void 0;
      responseUrl = docsUrl + pagePrefix;
      responseUrl += keywordName;
      responseUrl += pageSuffix;
      var http=require('http');
	    var liveLink =http.get(responseUrl)
	      if (liveLink.statusCode == 200) {
          return responseUrl;
        } else {
          return docsUrl;
        }
    }

    return msg.send(referenceLink(msg));
  });
}
