$(document).ready(function(){

  val = $("#resortName").html()

  $.ajax({
    type: "GET",
    url: "http://api.worldweatheronline.com/free/v1/ski.ashx?key=fc291ebd60c20935283da4510cd776a66d335e1d&q=" + val + "&format=json",
    dataType: "json"
  }).success(function(data){
    var weather = data.data.weather[0]
    $("#weather")
    .append("<h3>Todays Weather</h3>")
      .append("<li>Max Temp: " + weather.mid[0].maxtempC + "°C" + "</li>")
      .append("<li>Min Temp: " + weather.mid[0].mintempC + "°C" + "</li>")
      .append("<li>Current Snow Depth: " + weather.totalSnowfall_cm + "cm</li>")
      .append("<li>Chance of Snow: " + weather.chanceofsnow + "%</li>")
    $('#hourlyWeather')
      .append("<h3>Hourly Updates</h3>")
      .append("<li>Temperature: " + weather.hourly[0].mid[0].tempC + "°C</li>")
      .append("<li>Wind Speed: " + weather.hourly[0].mid[0].windspeedMiles + " Kmph</li>")
      .append("<li>Wind Direction: " + weather.hourly[0].mid[0].winddir16Point + "</li>")
      .append("<li>Description: " + weather.hourly[0].mid[0].weatherDesc[0].value + "</li>") 
      .append("<li>  <img id=weather src='" + weather.hourly[0].mid[0].weatherIconUrl[0].value + "'/></li>")
  })

});
