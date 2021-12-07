//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .
$(function() {
  const schedule = (".plan_schedule");
  const gear = (".plan_gear");

  $(function() {
    $(".detail_choice__schedule").on("click", function() {
      if ($(schedule).hide()) {
        $(schedule).fadeIn();
        $(gear).hide();
      }
    });
  });

  $(function() {
    $(".detail_choice__gear").on("click", function() {
      if ($(gear).hide()) {
        $(gear).fadeIn();
        $(schedule).hide();
      }
    });
  });
});
