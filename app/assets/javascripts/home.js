$(document).ready(function () {
    if ($('body#root').length) {
        $('#mc-slider').makecarousel({
            next: $('.arrow-right'),
            prev: $('.arrow-left'),
            dots: $('.mc-dots'),
            cover: true,
            inStep: 1
        });
        var doHei = function () {
            $('#mc-slider').css({
                'height': $(window).height() - $('#header').height() - $('#footer').height()
            });
        };
        doHei();
        $(window).resize(function () {
            doHei();
        });
    }
});