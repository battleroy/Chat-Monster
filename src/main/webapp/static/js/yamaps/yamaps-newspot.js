ymaps.ready(initMap);

var map;
var placemark = null;
function initMap() {
    map = new ymaps.Map("map", {
        center: [55.76, 37.64],
        zoom: 7
    });

    ymaps.geolocation.get({
        // Выставляем опцию для определения положения по ip
        provider: 'provider',
        // Карта автоматически отцентрируется по положению пользователя.
        mapStateAutoApply: true
    }).then(function (result) {
        map.geoObjects.add(result.geoObjects);
    });

    placemark = new ymaps.Placemark([$('#latitude').val(), $('#longitude').val()]);
    map.geoObjects.add(placemark);

    map.events.add('click', function (e) {
        console.log('event');
        var coords = e.get('coords');
        console.log(coords.join(', '));
        map.geoObjects.remove(placemark);
        placemark = new ymaps.Placemark(coords);
        map.geoObjects.add(placemark);

        $('#latitude').val(coords[0]);
        $('#longitude').val(coords[1]);
    });

    console.log("Yamaps initialized");
}