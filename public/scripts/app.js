console.log('clicked')


var map;


function initMap(data) {
  for (var i = 0; i < data.length; i++) {
        var myLatLng = {lat: data[i].latitude, lng: data[i].longitude}
        map = new google.maps.Map(document.getElementById('map'), {
          center: myLatLng,
          zoom: 10
        });

        // var marker = new google.maps.Marker({
        //   position: myLatLng,
        //   map: map,
        //   title: 'Hello World!'
        // });
        setMarkers(map);
      }
}

function setMarkers(map) {
  for (var i = 0; i < data.length; i++) {
    var venueMark = data[i];
    var marker = new google.maps.Marker({
      position: {lat: venueMark.latitude, lng: venueMark.longitude},
      map: map,
      title: data.name,
      venueName: data.venueName
    });
  }
}

