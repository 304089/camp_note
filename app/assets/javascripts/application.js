//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .
$(function() {
  const schedule = $(".plan_schedule");
  const gear = $(".plan_gear");

  $(function() {
    $(".detail_choice__schedule").on("click", function() {
      if ($(schedule).hide()) {
        $(schedule).fadeIn();
        $(gear).hide();
        $(".detail_choice__schedule").css("background", "white")
        $(".detail_choice__gear").css("background", "silver")
      }
    });
  });

  $(function() {
    $(".detail_choice__gear").on("click", function() {
      if ($(gear).hide()) {
        $(gear).fadeIn();
        $(schedule).hide();
        $(".detail_choice__schedule").css("background", "silver")
        $(".detail_choice__gear").css("background", "white")
      }
    });
  });

  $(function(){
    const menu = $(".menu_list")
    $(".menu_btn").on("click", function() {
      if ($(".menu_list").hasClass("menu_active")) {
        $(menu).removeClass("menu_active");
        $(menu).animate({'right':'0'},300);
        $(".main").css("background-color", "rgba(0,0,0,0.4)");
        $(".close_btn").removeClass("menu_btn_hide");
        $(".open_btn").addClass("menu_btn_hide");

      }else{
        $(menu).addClass("menu_active");
        $(menu).animate({'right':'-100%'},300);
        $(".main").css("background-color", "transparent");
        $(".close_btn").addClass("menu_btn_hide");
        $(".open_btn").removeClass("menu_btn_hide");
      }
    });
  });

});
