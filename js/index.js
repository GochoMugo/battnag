(function() {
"use strict";


$(document).ready(function() {
  buzz.defaults.loop = true; // keep going
  var $level = $("#battery-level");
  var $percentage = $("#battery-percentage");
  var maxAlarm = new buzz.sound("res/max.wav");
  var minAlarm = new buzz.sound("res/min.wav");
  var playing = false;

  var updateStatus = function(status, error) {
    if(error) {
      return;
    }
    var level = Math.floor(status.level * 100);

    // info
    $percentage.text(level + "%");

    // animations
    $level.toggleClass("charging", !!status.charging);
    $level.toggleClass("plugged", status.dischargingTime === Infinity);
    $level.css({"width": level + "%"});
    $level.toggleClass("low", level <= 20);

    // nags
    if (level >= 95 && !!status.charging) {
      playing = true;
      maxAlarm.play();
    } else if (level <= 15 && !status.charging) {
      playing = true;
      minAlarm.play();
    } else {
      playing = false;
      maxAlarm.stop();
      minAlarm.stop();
    }
  };

  setInterval(function() {
    Battery.getStatus(updateStatus);
  }, 1000);
});


})();
