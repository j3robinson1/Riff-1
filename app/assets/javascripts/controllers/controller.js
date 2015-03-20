// http://localhost:3000/riffblobs.json
(function () {
  "use strict";
  angular.module('riffApp')
  .controller('RiffController', function ($scope) {
    $scope.uploadComplete = function (content) {
      $scope.response = JSON.parse(content); // Presumed content is a json string!
      $scope.response.style = {
        fullname: $scope.response.fullname,
        "font-weight": "bold"
      };

      // Clear form (reason for using the 'ng-model' directive on the input elements)
      $scope.fullname = '';
      $scope.gender = '';
      $scope.color = '';
      // Look for way to clear the input[type=file] element
    };


  });

  // .controller('RiffController', function(RiffService,$location) {
  //   var riffCtrl = this;
  //   // riffCtrl.riffs = RiffService.getRiffs();
  //   riffCtrl.newRiff = {};
  //
  //   RiffService.getRiffs().success(function(data) {
  //   riffCtrl.riffs = data;
  //   });
  //
  //   riffCtrl.addMyRiffs = function(newRiff) {
  //     RiffService.addRiffs(newRiff);
  //     riffCtrl.newRiff = {};
  //     $location.path('/');
  //   };
  //
  // });
})();
