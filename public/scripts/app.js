console.log('clicked')


var map;


function initMap(data) {
  for (var i = 0; i < data.length; i++) {
        var myLatLng = {lat: data[0].latitude, lng: data[0].longitude}
        map = new google.maps.Map(document.getElementById('map'), {
          center: myLatLng,
          zoom: 16
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hello World!'
        });
marker.setMap(map);
      }
};

