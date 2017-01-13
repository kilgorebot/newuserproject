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
  robot.hear(/^!jquery (.*)/i, function(msg){
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
