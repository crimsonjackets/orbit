$(document).ready(function () {
    if ($('body#company').length) {
        $('#mc-slider').makecarousel({
            next: $('.arrow-right'),
            prev: $('.arrow-left'),
            inStep: 3
        });
    }
});
