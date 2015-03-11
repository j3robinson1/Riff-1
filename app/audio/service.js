(function () {
  "use strict";
  angular.module('RiffApp')
  .factory('RiffService', function ($http) {
    var url = '';


    var getAllRiffs = function () {
      return $http.get(url);
    }

    return {
      getRiffs: getAllRiffs,

    }

  })

});
