function checkForm() {
  var name = document.forms["trackingForm"]["name"].value;
  var rating = document.forms["trackingForm"]["rating"].value;
    if (name == "" ) {
        alert("Provide a name to create a run");
        return false;
    }
    else {
      create()
    }
}

// creating a new run and a segment
  function create() {
    var runInfo = {
      name: document.getElementById("name").value,
      rating: document.getElementById("rating").value,
      description: document.getElementById("description").value,
      resort_id: parseInt($('#resort :selected').attr('value')),
    }

        $.ajax({
          type: "POST",
          url: "/runs",
          dataType: "json",
          data: { run: runInfo},
          success: function(data){
              console.log(data)
              runId = data.id
              segment = { run_id: runId }
              $.ajax({
              type: "POST",
              url: "/segments",
              dataType: "json",
              data: { segment: segment }
              }).success(function(){
                segmentId = data.id
                console.log(segmentId + 'segment')
                console.log(runId + 'run')
                })
          }
         })

         $('#start_tracking').show();
      $('#track').hide()
      $('.geo_data').hide()
    }      
// -----------------------------------
// find location and keep tracking

function geoFindMe() {
  var output = document.getElementById("output");
  if (!navigator.geolocation){
    output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
    return;}
  
  function success(position) {
    var latitude  = position.coords.latitude;
    var longitude = position.coords.longitude;
    var altitude = position.coords.altitude;
    var speed = position.coords.speed
    var MarkerData = { latitude: latitude, longitude: longitude, elevation: altitude, segment_id: segmentId }

    $.ajax({
      type: "POST",
      url: "/markers",
      dataType: "json",
      data: { marker: MarkerData }
      }).success(function(data){
        console.log(data)
      });
  
    output.innerHTML = '<p>Current speed of ' + speed + ' m/s <br>Current altitude of ' + altitude + ' meters <br>Current latitude is ' + latitude + '° <br>Current longitude is ' + longitude  + '°</p>';
  }

  output.innerHTML = "<p>Locating…</p>";

  options = {
    enableHighAccuracy: true,
    timeout: 6000
  }      


  function error() {
    output.innerHTML = "Can't get location";
  };

  id = navigator.geolocation.watchPosition(success, error, options);

 $('#stop_tracking').show();
        $('#start_tracking').hide()

}

// -------------------
// stop watching location

 function clearWatch() {
          navigator.geolocation.clearWatch(id);
          document.getElementById('output').style.display='none'
          window.location.replace("/runs/" + runId)
  }