(function($){
  $.fn.makecarousel = function( params ) {
    mcMakeBody = function(bthis) {
      bthis.append('<div class="mc-window"></div>');
      w = bthis.find('.mc-window');
      imgs = bthis.find('img');
      imgs.each( function () {
        w.append(this);
      });
      bthis.css({
        'overflow': 'hidden'
      });
      imgs.css({
        'display': 'inline-block'
      });
      w.css({
        'width': bthis.width()*3
      })
    }(this);
  }
})(jQuery);