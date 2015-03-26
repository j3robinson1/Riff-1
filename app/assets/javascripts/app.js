(function () {
  "use strict";

  angular.module('riffApp', [
  'ngRoute',
  'ngUpload'

  ])
  .config(['$routeProvider', '$sceDelegateProvider', function ($routeProvider, $sceDelegateProvider) {
    $routeProvider
    .when('/', {
      templateUrl: 'assets/splash.html',
      controller: 'RiffController as riffCtrl'
    })
    .when('/upload', {
      templateUrl: 'assets/upload.html',
      controller: 'RiffController as riffCtrl'
    })
    .when('/main', {
      templateUrl: 'assets/main.html',
      controller: 'RiffController as riffCtrl'
    })
    .when('/all', {
      templateUrl: 'assets/all.html',
      controller: 'RiffController2'
    });

    $sceDelegateProvider.resourceUrlWhitelist([
      // Allow same origin resource loads.
      'self',
      // Allow loading from our assets domain.  Notice the difference between * and **.
      'https://dl.dropboxusercontent.com/**'
      ]);
  }]);

})();
