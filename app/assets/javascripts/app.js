(function () {
  "use strict";

  angular.module('riffApp', [
  'ngRoute',
  'ngUpload'

  ])
  .config(function ($routeProvider) {
    $routeProvider
    .when('/', {
      templateUrl: 'assets/splash.html',
      controller: 'RiffController as riffCtrl'
    })
    .when('/upload', {
      templateUrl: 'assets/upload.html',
      controller: 'RiffController as riffCtrl'
    })
    .when('/riffblobs.json', {
      templateUrl: 'assets/main.html',
      controller: 'RiffController as riffCtrl'
    })
  });

})();
