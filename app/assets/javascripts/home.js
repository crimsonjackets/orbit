$(document).ready(function () {
    if ($('body#root').length) {
        $('.slider').makecarousel({
            next: $('.arrow-right'),
            prev: $('.arrow-left'),
            dots: $('.mc-dots'),
            cover: true,
            inStep: 1
        });
        var doHei = (function () {
            $('.slider').height($(window).height() - $('#header').height() -
                $('#footer').height());
        }());
        $(window).resize(function () {
            doHei();
        });
    }
});