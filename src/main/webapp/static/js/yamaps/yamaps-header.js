function searchNearestSpots() {
    var placeText = $('#place').val();
    if (placeText.length > 0) {
        $.get("https://geocode-maps.yandex.ru/1.x/?format=json&geocode=" + placeText, function (data) {
            var geoobjects = data.response.GeoObjectCollection.featureMember;
            position = geoobjects[0].GeoObject.Point.pos.split(" ");
            console.log(position);
            window.location.replace("/nearestSpot?lat=" + position[1] + "&lon=" + position[0]);
        });
    }
}
