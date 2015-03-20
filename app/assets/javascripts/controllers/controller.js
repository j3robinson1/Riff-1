// http://localhost:3000/riffblobs.json
(function () {
  "use strict";
  angular.module('riffApp')
  .controller('RiffController', function ($scope, $sce) {
    
    $scope.uploadComplete = function (content) {

      $scope.response = (content); // Presumed content is a json string!
      console.log($scope.response.image)
      $scope.audioUrl = $scope.response.image;

      // Clear form (reason for using the 'ng-model' directive on the input elements)
      $scope.fullname = '';
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
