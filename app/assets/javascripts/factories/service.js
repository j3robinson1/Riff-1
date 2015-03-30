(function () {
  "use strict";
  angular.module('riffApp')
  .factory('RiffService',['$http', function ($http) {

    var url = '/riffblobs.json';
    var getRiffs = function () {
      return $http.get(url);
      console.log('getit')
    };

    // var addMyRiffs = function (content,id) {
    //   $http.patch(url + '/' + id, content);
    //   // url: (url + '/' + id);
    // };
    return {
      getRiffs: getRiffs,
    };

  }])

  angular.module('riffApp')
  .factory('RiffService2',['$http', function ($http) {
    var url2 = '/riffblobs/all.json';
    var getAllRiffs = function() {
      return $http.get(url2);
      console.log('getit')
    };
    return {
      getAllRiffs: getAllRiffs
      // addRiffs: addMyRiffs
    };

  }]);
})();
