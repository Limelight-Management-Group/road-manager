console.log('clicked')


var map;


function initMap(data) {
  if (!data.length) {

        var myLatLng = {lat: data.latitude, lng: data.longitude}
        map = new google.maps.Map(document.getElementById('map'), {
          center: myLatLng,
          zoom: 45
        });
         setMarker(data);
      }
      else{
        console.log("multiple points")
        var newpoint = data
        console.log("lat of first is:"+data[0])
        var myLatLng = {lat: newpoint[0].latitude, lng: newpoint[0].longitude}
        map = new google.maps.Map(document.getElementById('map'), {
          center: myLatLng,
          zoom: 21
        });
        setMarkers(data);
      }




}

function setMarkers(datas) {
  console.log("doing setMarkerS")
  var bounds = new google.maps.LatLngBounds();
  for (var i = 0; i < datas.length; i++) {
    var marker = new google.maps.Marker({
      position: {lat: datas[i].latitude, lng: datas[i].longitude},
      map: map,
      title: datas[i].name,
      venueName: datas[i].venueName
    });

      bounds.extend(marker.position);
    }
      map.fitBounds(bounds);
 }


function setMarker(data) {
       var newpoint = data
          var marker = new google.maps.Marker({
            position: {lat: newpoint.latitude, lng: newpoint.longitude},
            map: map,
            title: newpoint.name,
            venueName: newpoint.venueName
          });

        };
