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

  module.exports = function(robot) {
    var docsUrl, pagePrefix, referenceLink, sqlSuffix;
    docsUrl = 'http://www.w3schools.com/jquery/';
    pageSuffix = '.asp';
    pagePrefix = 'event_';
/*    referenceLink = function(res) {
      var keywordName, ref, response, helpLink;
      keywordName = (ref = res.match[1]) != null ? ref.replace(' ', '') : void 0;
      helpLink = "Check out " + docsUrl + pagePrefix;
      helpLink += keywordName;
      helpLink += pageSuffix;
      var http=require('http');
      var request =http.get(helpLink, function(validLink){
          if (validLink.statusCode == 200) {
            response = helpLink;
          } else {
            response = docsUrl;
          };

      return res.send(response);
    };
    return robot.hear(/^!jquery (\w*)/i, function(res) {
      return referenceLink(res);
    }); */
  };
 
