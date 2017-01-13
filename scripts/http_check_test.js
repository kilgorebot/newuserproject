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
        msg.reply("YES");
    });
}
