(function () {
  "use strict";

  angular.module('riffApp', [
  'ngRoute'

  ])
  .config(function ($routeProvider) {
    $routeProvider
    .when('/', {
      templateUrl: 'assets/splash.html',
      controller: 'RiffController as riffCtrl'
    })

  })

  .config(function ($routeProvider) {
    $routeProvider
    .when('/upload', {
      templateUrl: 'assets/upload.html',
      controller: 'RiffController as riffCtrl'
    })

  })

    .config(function ($routeProvider) {
      $routeProvider
      .when('/riffblobs.json', {
        templateUrl: 'assets/main.html',
        controller: 'RiffController as riffCtrl'
      })
  });


})();
