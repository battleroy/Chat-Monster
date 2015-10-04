

ymaps.ready(initMap);

var map;
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
}