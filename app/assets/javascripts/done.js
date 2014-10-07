$(document).ready(function () {
    if ($('body#done').length) {
        $('#mc-slider').makecarousel({
            next: $('.arrow-right'),
            prev: $('.arrow-left')
        });
    }
});