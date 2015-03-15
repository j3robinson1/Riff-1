(function() {
  angular.module('riffApp', []);
})();
$(document).ready(function() {
  $(".myprofile").hide();
  $('.profile').on('click', function() {
    $('.myprofile').slideToggle()
  })
})
