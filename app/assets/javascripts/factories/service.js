(function () {
  "use strict";
  angular.module('riffApp')
  .factory('RiffService', function ($http) {

    var url = 'http://localhost:3000/riffblobs.json';
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

  })

  angular.module('riffApp')
  .factory('RiffService2', function ($http) {
    var url2 = 'http://localhost:3000/riffblobs/all.json';
    var getAllRiffs = function() {
      return $http.get(url2);
      console.log('getit')
    };

    return {
      getAllRiffs: getAllRiffs
      // addRiffs: addMyRiffs
    };

  });

})();
