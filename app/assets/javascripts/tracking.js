

function geoFindMe() {
  var output = document.getElementById("output");
  if (!navigator.geolocation){
    output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
    return;
  }



  function success(position) {
    var latitude  = position.coords.latitude;
    var longitude = position.coords.longitude;
    var altitude = position.coords.altitude;
    var speed = position.coords.speed
    var run_id =  $('#run_id').html()

    output.innerHTML = '<p>Your speed is ' + speed + ' m <br>Your altitude is ' + altitude + ' m <br>Latitude is ' + latitude + '° <br>Longitude is ' + longitude  + '°</p>';

    $.ajax({
        type: "POST",
        url: "/markers",
        dataType: "json",
        data: {marker: {latitude: latitude, longitude: longitude, elevation: altitude, segment_id: run_id}}
      }).success(function(data){
        console.log(data)
      })
  };

  function error() {
    output.innerHTML = "Can't get location";
  };

 

  output.innerHTML = "<p>Locating…</p>";

  options = {
    enableHighAccuracy: true,
    timeout: 6000
  }

  id = navigator.geolocation.watchPosition(success, error, options);
}

 function clearWatch() {
    console.log("here")
          navigator.geolocation.clearWatch(id);
  }