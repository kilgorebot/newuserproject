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
	var http=require('http');
	var request =http.get("http://kilgorei.pairserver.com/fadggf", function(response){
	      msg.reply(response.statusCode);
	  });

  });
}
