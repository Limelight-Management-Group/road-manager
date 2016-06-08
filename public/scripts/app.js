console.log('clicked')

window.onload = initMap;

var map;
function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 12
        });
        $.ajax({
          type: 'GET',
          url: '/venues',
          dataType: 'json',
          success: function(venues) {
            console.log(venues);
          }

        })
      }


