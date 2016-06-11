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
        console.log("lat of first is:"+data[0].latitude+data[0].longitude)
        var myLatLng = {lat: newpoint[0].latitude, lng: newpoint[0].longitude}
        map = new google.maps.Map(document.getElementById('map'), {
          center: myLatLng,
          zoom: 21
        });
        setMarkers(data);
      }




}

var infoWindow = null;
function setMarkers(data) {
  console.log("doing setMarkerS")
  infoWindow = new google.maps.InfoWindow({
      content: "holding..."
  })
  var bounds = new google.maps.LatLngBounds();

  for (var i = 0; i < data.length; i++) {
    console.log("lat of first is:"+data[i].latitude+data[i].longitude)
    var marker = new google.maps.Marker({
      position: {lat: data[i].latitude, lng: data[i].longitude},
      map: map,
      name: data[i].name,
      venue_name: data[i].venue_name,
      website: data[i].website,
      location: data[i].location
    });




    // content:
    google.maps.event.addListener(marker, 'click', function(){
        infoWindow.setContent('<strong> Name: </strong>' + this.name + '<br>' + '<strong> Venue Name: </strong>' + this.venue_name + '<br>' + '<strong> Location: </strong>' + this.location + '<br>' + '<strong> Website: </strong>' + this.website)
        infoWindow.open(map, this);
    })

    bounds.extend(marker.position);
  }
    map.fitBounds(bounds);
 }


function setMarker(data) {
       var newpoint = data;
          var marker = new google.maps.Marker({
            position: {lat: newpoint.latitude, lng: newpoint.longitude},
            map: map,
            title: newpoint.name,
            venueName: newpoint.venueName
          })

      var infoWindow = new google.maps.InfoWindow({
        content: '<strong> Name: </strong>' + data.name + '<br>' + '<strong> Venue Name: </strong>' + data.venue_name + '<br>' + '<strong> Location: </strong>' + data.location + '<br>' + '<strong> Website: </strong>' + data.website
      })

      google.maps.event.addListener(marker, 'click', function(){
          infoWindow.open(map, this)
      })


        };
