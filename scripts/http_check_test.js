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
        msg.reply("YES I'M WORKING LEAVE THE BUSY ROBOT ALONE!!!");
    });
}
