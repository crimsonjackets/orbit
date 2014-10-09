(function ($) {
    "use strict";
    $.fn.makecarousel = function (params) {
        var config = $.extend({
                inStep: 1,
                next: null,
                prev: null,
                dots: null,
                currentNum: 0,
                transition: '.5s all ease',
                cover: false
            }, params),
            pack,
            img,
            item,
            win,
            u,
            slide;

        (function (thisBody) {
            thisBody.addClass('mc-body');
            win = $('<div class="mc-window"></div>').appendTo(thisBody);
            pack = $('<div class="mc-pack-images"></div>').appendTo(win);
            // img = thisBody.find('img');
            item = thisBody.find('.mc-item');
            item.each(function () {
                // TODO
                $(this).addClass('mc-item').appendTo(pack);
            });
            pack.css({
                'width': 100 * item.length + '%',
                'transition': config.transition
            });
            item.css({
                'width': 100 / item.length / config.inStep + '%'
            });
            if ($(config.dots).is($)) {
                config.dots.append('<ul class="mc-ul"></ul>');
                u = config.dots.find('.mc-ul');
                var i;
                for (i = 0; i < item.length - (config.inStep - 1); i += 1) {
                    u.append('<li></li>');
                }
            }
        }(this));

        function mcActiveDots() {
            if ($(config.dots).is($)) {
                u.find('li.active').removeClass('active');
                u.find('li').eq(config.currentNum).addClass('active');
            }
        }

        mcActiveDots();

        slide = function (p) {
            config.currentNum += config.currentNum + p >= 0 &&
                config.currentNum + p < item.length -
                (config.inStep - 1) ? p : 0;
            pack.css('margin-left', -config.currentNum * 100 / config.inStep +
                '%');
            mcActiveDots();
        };

        if (config.next !== null) {
            config.next.click(function () {
                slide(1);
            });
        }

        if (config.prev !== null) {
            config.prev.click(function () {
                slide(-1);
            });
        }

    };
}(jQuery));