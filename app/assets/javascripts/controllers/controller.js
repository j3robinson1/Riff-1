// http://localhost:3000/riffblobs.json
(function () {
  "use strict";
  angular.module('riffApp')
  .controller('RiffController', function ($scope, $sce, $routeParams, RiffService, $location) {

    $scope.uploadComplete = function (content) {

      $scope.response = (content); // Presumed content is a json string!
      console.log($scope.response.file)
      $scope.audioUrl = $scope.response.file;
      $scope.currentIndex = $scope.response.riffId;
      console.log("response", $scope.response);

      // Clear form (reason for using the 'ng-model' directive on the input elements)
      $scope.fullname = '';
      // Look for way to clear the input[type=file] element
      addMyRiffs($scope.response.file, $scope.response.id);
    };



    RiffService.getRiffs().success(function(content) {
      $scope.responses = content;
    });

    function addMyRiffs(content, id) {
      RiffService.addRiffs(content, id);

    }




    });

})();
