(function () {
  "use strict";

  angular.module('RiffApp', [
  'ngRoute',
  // 'ngUpload'
  ])
  .config(function ($routeProvider) {
    $routeProvider
    .when('/', {
      templateUrl: 'splash.html',
      controller: 'RiffController as riffCtrl'
    })

  })

  .config(function ($routeProvider) {
    $routeProvider
    .when('/upload', {
      templateUrl: 'upload.html',
      controller: 'RiffController as riffCtrl'
    })


  });

})();
