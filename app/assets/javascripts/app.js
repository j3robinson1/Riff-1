(function () {
  "use strict";

  angular.module('riffApp', [
  'ngRoute',
  // 'ngUpload'
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


  });

})();
