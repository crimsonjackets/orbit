$(document).ready(function () {
    function initialize() {
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({
            address: "Санкт-Петербург, Левашовский пр., д. 12"
        }, function (result) {
            var mapOptions = {
                    center: result[0].geometry.location,
                    disableDefaultUI: true,
                    zoom: 17,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                },
                map = new google.maps.Map(document.getElementById(
                    "map-canvas"), mapOptions),
                marker = new google.maps.Marker({
                    position: result[0].geometry.location,
                    map: map
                });
        });
    }
    if ($('body#contacts').length) {
        initialize();
    }
});