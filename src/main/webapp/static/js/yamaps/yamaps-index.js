ymaps.ready(initMap);

var map;
var placemark = null;
var placemarkArray = [];

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

    console.log('placemark count: ' + placemarkArray.length);
    placemarkArray.forEach(function (item, i, arr) {
        map.geoObjects.add(new ymaps.Placemark(
            [item.location[0], item.location[1]], {
                balloonContent: '<div class="panel panel-default"><div class="panel-heading"><h3 class="panel-title">' + item.name + '</h3></div><div class="panel-body">' + item.description + '</div></div>'
            }, {
                preset: "twirl#yellowStretchyIcon"
            }
        ));
    });

    console.log("Yamaps initialized");
}

function addPlacemark(latitude, longitude, text) {
    placemarkArray.push({
        location: [latitude, longitude],
        name: text,
        description: 'Lat: ' + latitude + ',<br> lon: ' + longitude
    });
    console.log('Location. Lat: ' + latitude + ', lon: ' + longitude);
}