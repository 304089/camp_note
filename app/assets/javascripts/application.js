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
        $(schedule).show();
        $(gear).hide();
        $(".detail_choice__schedule").css("background", "white")
        $(".detail_choice__gear").css("background", "silver")
      }
    });
  });

  $(function() {
    $(".detail_choice__gear").on("click", function() {
      if ($(gear).hide()) {
        $(gear).show();
        $(schedule).hide();
        $(".detail_choice__schedule").css("background", "silver")
        $(".detail_choice__gear").css("background", "white")
      }
    });
  });
});
