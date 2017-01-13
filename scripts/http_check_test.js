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
    var docsUrl = 'http://www.w3schools.com/sql/';
    var pageSuffix = '.asp';
    var pagePrefix = 'sql_';
    var referenceLink;
    referenceLink = function(responseUrl) {
      var keywordName;
      var ref;
      var response;
      
    }
    // build the first url to check
    var helpLink = "http://kilgorei.pairserver.com/";
	  var http=require('http');
	  var request =http.get(helpLink, function(response){
	      if (response.statusCode == 200) {
          msg.reply(helpLink);
        } else {
          msg.reply("I'm broken");
        }
      
	  });

  });
}
