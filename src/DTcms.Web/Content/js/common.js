if ($("#about").length > 0) {
  window.onscroll = function(e) {
    if (window.scrollY >= 115) {
      $(".subnav").addClass("scroll");
    }
    if (window.scrollY <= 114) {
      $(".subnav").removeClass("scroll");
    }
  };
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (
      location.pathname.replace(/^\//, "") ==
        this.pathname.replace(/^\//, "") &&
      location.hostname == this.hostname
    ) {
      var target = $(this.hash);
      target = target.length ? target : $("[name=" + this.hash.slice(1) + "]");
      if (target.length) {
        $("html, body").animate(
          {
            scrollTop: target.offset().top
          },
          800
        );
        return false;
      }
    }
  });
}

$('table').addClass('table table-responsive table-bordered').removeAttr('width');
$('tr,td,table p,table span').removeAttr('style').removeAttr('width');

var swiper = new Swiper(".swiper-container", {
  pagination: ".swiper-pagination",
  paginationClickable: true,
  nextButton: ".swiper-button-next",
  prevButton: ".swiper-button-prev",
  loop: true,
  speed: 650
});

AOS.init({
  duration: 1400,
  easing: "ease"
});

//导航选中
$("#navId" + navId).addClass("active");
