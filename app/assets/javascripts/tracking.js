function geoFindMe() {
  var output = document.getElementById("output");

  if (!navigator.geolocation){
    output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
    return;
  }

  function success(position) {
    latitude  = position.coords.latitude;
    longitude = position.coords.longitude;
    output.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';
    
  };

  function error() {
    output.innerHTML = "Can't get location";
  };

  output.innerHTML = "<p>Locating…</p>";

  options = {
    enableHighAccuracy: true,
    timeout: 6000
  }

  navigator.geolocation.watchPosition(success, error, options);



// $(document).ready(function(){

//  var request = $.ajax({
//     type: "POST",
//     url: "/markers.json",
//     dataType: "json",
//     data: {
//       latitude: latitude,
//       longitude: longitude
//     }
//   })

//  request.success(function(){
//      console.log(latitude)
//     console.log(longitude)
//   })

//  request.fail(function(){
//   alert("failed")
//  })
// });

}


// ajax put request with the latitude and longitude into markers model into the corosponding colomuns

