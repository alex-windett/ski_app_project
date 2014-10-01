  $(function(){
    // Masonary Jquery
    $('#container').masonry({
      itemSelector: '.box',
      columnWidth: 100,
      isAnimated: true,
      isResizable: true
    });
    

// The maths to calculate the distance of a run between the first
// and last markers
  function toRad(Value) {
    /** Converts numeric degrees to radians */
    return Value * Math.PI / 180;
  }

  var lat1 = $('#firstLat').html()
  var lon1 = $("#firstLon").html()
  var lat2 = $("#lastLat").html()
  var lon2 = $("#lastLon").html()

  var R = 6371; // km
  var φ1 = toRad(lat1);
  var φ2 = toRad(lat2);
  var Δφ = toRad((lat2-lat1));
  var Δλ = toRad((lon2-lon1));

  var a = Math.sin(Δφ/2) * Math.sin(Δφ/2) +
        Math.cos(φ1) * Math.cos(φ2) *
        Math.sin(Δλ/2) * Math.sin(Δλ/2);
  var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));

  var d = R * c;

  // printing distance to 2 decimal points in KM
  $("#distance").append(d.toFixed(2) + " Km")

// need to find a way to find total distance.
// at the momement if the loop is circular then it distance between
// start and end point, not whole journey

  });