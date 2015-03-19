// http://localhost:3000/riffblobs.json
(function () {
  "use strict";
  angular.module('riffApp')
  .controller('RiffController', function(RiffService,$location) {
    var riffCtrl = this;
    // riffCtrl.riffs = RiffService.getRiffs();
    riffCtrl.newRiff = {};

    RiffService.getRiffs().success(function(data) {
    riffCtrl.riffs = data;
    });

    riffCtrl.addMyRiffs = function(newRiff) {
      RiffService.addRiffs(newRiff);
      riffCtrl.newRiff = {};
      $location.path('/');
    };

  });
})();
