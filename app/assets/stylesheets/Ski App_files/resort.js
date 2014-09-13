$(document).ready(function(){

  val = $("#resortName").html()

  $.ajax({
    type: "GET",
    url: "http://api.worldweatheronline.com/free/v1/ski.ashx?key=fc291ebd60c20935283da4510cd776a66d335e1d&q=" + val + "&format=json",
    dataType: "json"
  }).success(function(data){
    console.log(data)
    var weather = data.data.weather[0]
    $("#weather")
      .append("<li>Max Temp: " + weather.mid[0].maxtempC + "</li>")
      .append("<li>Min Temp: " + weather.mid[0].mintempC + "</li>")
      .append("<li>Current Snow Depth: " + weather.totalSnowfall_cm + "</li>")
      .append("<li>Chance of Snow: " + weather.chanceofsnow + "</li>")
      .append("<h3>Hourly Updates</h3>")
      // .append("<li>Latest Mid Level Wheather as of: " + weather.hourly[0].time + "</li>")
      .append("<li>Wind Speed: " + weather.hourly[0].mid[0].windspeedMiles + "</li>")
      .append("<li>Description: " + weather.hourly[0].mid[0].weatherDesc[0].value + "<img id=weather src='" + weather.hourly[0].mid[0].weatherIconUrl[0].value + "'/></li>")
  })

});
