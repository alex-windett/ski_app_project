

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
    var segment_id =  $('#segment_id').html()
    var MarkerData = { 
      latitude: latitude,
      longitude: longitude, 
      elevation: altitude, 
      segment_id: run_id 
      }



    output.innerHTML = '<p>Your speed is ' + speed + ' m/s <br>Your at an altitude of ' + altitude + ' meters <br>Latitude is ' + latitude + '° <br>Longitude is ' + longitude  + '°</p>';

  var run = {
      name: document.getElementById("name").value,
      rating: document.getElementById("rating").value,
      description: document.getElementById("description").value,
      resort_id: 1
    }
    var segment = {
      run_id: 1 
    }

    $.ajax({
      type: "POST",
      url: "/runs",
      dataType: "json",
      data: { run: run},
      success: function(data){
          $.ajax({
          type: "POST",
          url: "/segments",
          dataType: "json",
          data: { segment: segment },
          success: function(data){
              $.ajax({
              type: "POST",
              url: "/markers",
              dataType: "json",
              data: { marker: MarkerData }
              }).success(function(data){
                console.log(data)
              })
          }
         })
      }
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
          var run_id =  $('#run_id').html()
          navigator.geolocation.clearWatch(id);
          document.getElementById('output').style.display='none'
          window.location.replace("/runs/" + 1)
  }
