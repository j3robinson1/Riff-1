$(document).on('click', '.create-profile', function(){
  var profile = {
    name: $(".name").val(),
    location: $(".location").val()
  };
  $.ajax({
    type: 'POST',
    url: '/profiles/',
    dataType: 'script',
    data: {profile: profile}
  })
  location.reload() //horray bad practice
})
$(document).on('click', '.escape', function(){
  location.reload()
});
$(document).on("click", ".delete-profile", function() {
  console.log("asdf");
  var profile_id = $(this).attr("profile_id");
  $.ajax({
    type: 'DELETE',
    url: '/profiles/' + profile_id,
    dataType: 'script',
    success: function() {
      $("li.profile-" + profile_id).remove();
    }
  })
});