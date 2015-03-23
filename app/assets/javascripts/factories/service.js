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
      getRiffs: getRiffs
      // addRiffs: addMyRiffs
    };

  });

})();
