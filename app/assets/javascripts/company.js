if ($('body#company').length) {
    $(document).ready(function () {
        $('#mc-slier').makecarousel({
            next: $('.arrow-right'),
            prev: $('.arrow-left'),
            inStep: 3
        });
    });
}
