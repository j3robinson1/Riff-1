var aLaCarte = angular
  .module('aLaCarte', [])
  .config(function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $("meta[name=csrf-token]").attr("content");
  })
;

// var aLaCarte, controllers;
// aLaCarte = angular.module('aLaCarte', ['templates', 'ngRoute', 'controllers']);
// aLaCarte.config([
//   '$routeProvider', function($routeProvider) {
//     return $routeProvider.when('/', {
//       templateUrl: "index.html",
//       controller: 'RecipesController'
//     });
//   }
// ]);
// controllers = angular.module('controllers', []);
// controllers.controller("RecipesController", ['$scope', function($scope) {}]);