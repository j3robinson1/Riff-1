(function () {
  "use strict";
  angular.module('RiffApp')
  .controller('RiffController', function (RiffService,$location,$routeParams) {
    var riffCtrl = this;

    RiffService.getRiffs().success(function(data) {
      RiffCtrl.riffs = data;
    });
