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

      var lat = $("#lat").html();
      var lon = $("#lon").html();
      console.log(lat)
      console.log(lon)
    
    $.ajax({
        type: "POST",
        url: "/markers",
        dataType: "json",
        data: {marker: {latitude: lat, longitude: lon}}
      }).success(function(data){
        console.log(data, "hello world")
        alert('result from ajax')
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

  navigator.geolocation.watchPosition(success, error, options);
}


// $(document).ready(function(){

//   $("#geo_button").click(function(){
//       var lat = $("#lat").html();
//       var lon = $("#lon").html();
//       console.log(lat)
//       console.log(lon)
    

//     $.ajax({
//         type: "POST",
//         url: "/markers",
//         dataType: "html",
//         data: {marker: {latitude: lat, longitude: lon}}
//       }).success(function(){
//         alert("sucess")
//       }).fail(function(){
//         alert("fail")
//       })
//   });

// var senddata = function () { 
//   console.log("this ran") 
//     var request = $.ajax({ 
//         type: "POST",
//           url: "/markers.json",
//       dataType: "json",
//     data: {
//       latitude: latitude,
//       longitude: longitude
//     }
//   })


// });