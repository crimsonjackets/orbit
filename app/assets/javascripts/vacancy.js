$(document).ready(function () {
    if ($('body#vacancy').length) {
        $('#mc-slider').makecarousel({
            next: $('.arrow-right'),
            prev: $('.arrow-left'),
            inStep: 2
        });
    }
});