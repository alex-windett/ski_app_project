function geoFindMe() {
  var output = document.getElementById("output");

  if (!navigator.geolocation){
    output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
    return;
  }

    var watchID = null;

  function success(position) {
    var latitude  = position.coords.latitude;
    var longitude = position.coords.longitude;
    var altitude = position.coords.altitude;
    output.innerHTML = altitude + '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude  + '°</p>';

      // var lat = $("#lat").html();
      // var lon = $("#lon").html();
      // console.log(lat)
      // console.log(lon)
    
    $.ajax({
        type: "POST",
        url: "/markers",
        dataType: "json",
        data: {marker: {latitude: latitude, longitude: longitude, elevation: altitude}}
      }).success(function(data){
        console.log(data)
      })
  };

  function error() {
    output.innerHTML = "Can't get location";
  };

    function clearWatch() {
        if (watchID != null) {
            navigator.geolocation.clearWatch(watchID);
            watchID = null; 
        }
    }

  output.innerHTML = "<p>Locating…</p>";

  options = {
    enableHighAccuracy: true,
    timeout: 6000
  }

  navigator.geolocation.watchPosition(success, error, options);
}