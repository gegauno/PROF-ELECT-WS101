document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.carousel');
    var instances = M.Carousel.init(elems, options);
  });

 

  $(document).ready(function(){
    $('.carousel').carousel();
  });

  var instance = M.Carousel.getInstance(elem);
  instance.next();
  instance.next(3);
  instance.prev();
instance.prev(3);
instance.destroy();
var instance = M.Carousel.init({
    fullWidth: true
  });

  // Or with jQuery

  $('.carousel.carousel-slider').carousel({
    fullWidth: true
  });