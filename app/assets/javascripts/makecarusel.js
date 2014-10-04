(function($){
  $.fn.makecarousel = function( params ) {
    var config = {
      next: null,
      prev: null,
      dots: null,
      currentNum: 0,
      transition: '.5s all ease'
    };

    config = $.extend(config, params);

    step = this.width();
    var w, t, ws, ts, text = [];

    mcMakeBody = function(_this) {
      _this.append('<div class="mc-window-images"></div>');
      _this.append('<div class="mc-window-text"></div>');
      w = _this.find('.mc-window-images');
      t = _this.find('.mc-window-text');
      ws = _this.find('img');

      ws.each( function() {
        div = $(this).parent()
        w.append(this);
        text.push(div.html());
        div.remove();
      });

      ws.each( function(i) {
        t.append('<div class="mc-item"></div>');
        t.find('.mc-item').last().html(text[i]);
      })

      ts = t.find('.mc-item');

      _this.css({
        'overflow': 'hidden'
      });

      w.css({
        'width': 100*ws.length + '%',
        'transition': config.transition
      });

      t.css({
        'position': 'absolute',
        'width': 100*ws.length + '%',
        'transition': config.transition
      });

      ts.css({
        'position': 'relative',
        'float': 'left',
        'min-height': '100%',
        'min-width': 100/ws.length + '%'
      });

      ws.css({
        'float': 'left',
        'min-height': '100%',
        'max-width': 100/ws.length + '%'
      });

    }(this);

    mcMakeDots = function(_this) {
      if ($(config.dots).is($)) {
        config.dots.append('<ul class="mc-ul"></ul>');
        u = config.dots.find('.mc-ul');
        ws.each( function() {
          u.append('<li></li>');
        });
      }
    }(this);

    function mcActiveDots() {
      u.find('li.active').removeClass('active');
      u.find('li').eq(config.currentNum).addClass('active');
    };

    slide = function(p) {
      config.currentNum += config.currentNum+p >= 0 && config.currentNum+p
          < ws.length ? p : 0;
      w.css('margin-left', -config.currentNum*100 + '%');
      t.css('margin-left', -config.currentNum*100 + '%');
      mcActiveDots();
    }

    mcActiveDots();
    config.next.click( function() {
      slide(1);
    });
    config.prev.click( function() {
      slide(-1);
    });
  }
})(jQuery);