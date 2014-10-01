gm_init = ->
  gm_center = new google.maps.LatLng(51.50, 0.12)
  gm_map_type = google.maps.MapTypeId.TERRAIN
  map_options = {center: gm_center, zoom: 2, mapTypeId: gm_map_type}


  new google.maps.Map(@map_canvas,map_options);


load_run = (id,map) ->
  callback = (data) -> display_on_map(data,map)
  $.get '/runs/' + id + '.json', {}, callback, 'json'


display_on_map = (data,map) ->
  decoded_path = google.maps.geometry.encoding.decodePath(data.polyline)
  path_options = { path: decoded_path, strokeColor: "#FF0000",strokeOpacity: 0.5, strokeWeight: 5}
  run_path = new google.maps.Polyline(path_options)
  run_path.setMap(map)
  map.fitBounds(calc_bounds(run_path));


calc_bounds = (run_path) ->
  b = new google.maps.LatLngBounds()
  gm_path = run_path.getPath()
  path_length = gm_path.getLength()
  i = [0,(path_length/3).toFixed(0),(path_length/3).toFixed(0)*2]
  b.extend(gm_path.getAt(i[0]))
  b.extend(gm_path.getAt(i[1]))
  b.extend(gm_path.getAt(i[2]))

$ ->
  if window.map_canvas != undefined
    map = gm_init()
    load_run(js_run_id,map)

