(function ($) {
  ("use strict");

  //===== General Variables =====//
  var pgurl,
    width,
    wow,
    port_caro,
    testi_caro,
    menu_height = $("header").innerHeight(),
    scroll = $(window).scrollTop();

  $(document).ready(function () {

    //===== Width =====//
    width = window.innerWidth;
    //===== Wow Animation Setting =====//
    if ($(".wow").length > 0) {
      var wow = new WOW({
        boxClass: "wow", // default
        animateClass: "animated", // default
        offset: 0, // default
        mobile: true, // default
        live: true // default
      });

      wow.init();
    }

    if (width < 1030) {
      //===== Responsive Menu =====//
      $(".res-menu-btn").on("click", function () {
        $("nav > ul").addClass("slidein");
        $(".res-menu-close").addClass("d-inline-flex");
        return false;
      });
      $("nav > ul").on("click", function (e) {
        e.preventDefault();
      });
      $("html, body").on("click", function () {
        $("nav > ul").removeClass("slidein");
        $(".res-menu-close").removeClass("d-inline-flex");
      });
      $("nav li.menu-item-has-children > a > i").on("click", function () {
        $(this).parent().parent().siblings("li").children("ul").slideUp();
        $(this).parent().parent().siblings("li").removeClass("active");
        $(this).parent().parent().children("ul").slideToggle();
        $(this).parent().parent().toggleClass("active");
        return false;
      });
    }


    if (width > 1290) {
      //===== Sticky Sidebar =====//
      if ($.isFunction($.fn.theiaStickySidebar)) {
        $(".resume-sidebar, .resume-content").theiaStickySidebar({
          additionalMarginTop: 30
        });
      }
    }
  }); //===== Document Ready Ends =====//

  //===== Window onLoad =====//
  $(window).on("load", function () {

    //===== Header Spacing =====//
    $("main").css("padding-top", menu_height);

    //===== Page Loader =====//
    $(".page-loader").fadeOut("slow");
  }); //===== Window onLoad Ends =====//

})(jQuery);
