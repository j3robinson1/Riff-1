
(function () {
  "use strict";
  angular.module('riffApp')
  .controller('RiffController', function (RiffService, $scope, $sce, $routeParams, $location) {

    $scope.uploadComplete = function (content) {
      console.log("**********************")
      console.log(content)
      $scope.response = (content); // Presumed content is a json string!
      console.log($scope.response.file)
      $scope.audioUrl = $scope.response.file;
      $scope.currentIndex = $scope.response.riffId;
      console.log("response", $scope.response);

      // Clear form (reason for using the 'ng-model' directive on the input elements)
      $scope.fullname = '';
      // Look for way to clear the input[type=file] element
      // addMyRiffs($scope.response.file, $scope.response.id);

      $location.path('/main');
    };

    RiffService.getRiffs().success(function(data) {
      $scope.riffs = data;
    });


  });

  angular.module('riffApp')
  .controller('RiffController2', function (RiffService2, $scope, $sce, $routeParams, $location) {

    RiffService2.getAllRiffs().success(function(data) {
      $scope.blobs = data;
      $location.path('/all');
    });

  });
})();
