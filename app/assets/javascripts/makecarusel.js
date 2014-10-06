(function($){
  $.fn.makecarousel = function( params ) {
    var config = {
      inStep: 1,
      next: null,
      prev: null,
      dots: null,
      currentNum: 0,
      transition: '.5s all ease',
      cover: false
    };
    config = $.extend(config, params);
    step = this.width();
    var w, t, ws, ts, text = [], u;
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
        'width': 100/ws.length/config.inStep + '%'
      });
      ws.css({
        'float': 'left',
        'width': 100/ws.length/config.inStep + '%'
      });
      if (config.cover) {
        ts.css({
          'min-height': '100%'
        });
        ws.css({
          'min-height': '100%'
        });
      };
    }(this);
    mcMakeDots = function(_this) {
      if ($(config.dots).is($)) {
        config.dots.append('<ul class="mc-ul"></ul>');
        u = config.dots.find('.mc-ul');
        for (var i=0; i<ws.length-(config.inStep-1); i++) {
          u.append('<li></li>');
        }
      }
    }(this);
    function mcActiveDots() {
      if ($(config.dots).is($)) {
        u.find('li.active').removeClass('active');
        u.find('li').eq(config.currentNum).addClass('active');
      }
    };
    slide = function(p) {
      config.currentNum += config.currentNum+p >= 0 && config.currentNum+p
          < ws.length-(config.inStep-1) ? p : 0;
      w.css('margin-left', -config.currentNum*100/config.inStep + '%');
      t.css('margin-left', -config.currentNum*100/config.inStep + '%');
      mcActiveDots();
    }
    mcActiveDots();
    if  (config.next !== null) {
      config.next.click( function() {
        slide(1);
      });
    }
    if  (config.prev !== null) {
      config.prev.click( function() {
        slide(-1);
      });
    }
  }
})(jQuery);