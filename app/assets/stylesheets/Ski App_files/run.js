(function() {
  var calc_bounds, display_on_map, gm_init, load_run;

  gm_init = function() {
    var gm_center, gm_map_type, map_options;
    gm_center = new google.maps.LatLng(51.50, 0.12);
    gm_map_type = google.maps.MapTypeId.TERRAIN;
    map_options = {
      center: gm_center,
      zoom: 2,
      mapTypeId: gm_map_type
    };
    return new google.maps.Map(this.map_canvas, map_options);
  };

  $(function() {
    var map;
    return map = gm_init();
  });

  load_run = function(id, map) {
    var callback;
    callback = function(data) {
      return display_on_map(data, map);
    };
    return $.get('/runs/' + id + '.json', {}, callback, 'json');
  };

  display_on_map = function(data, map) {
    var decoded_path, path_options, run_path;
    decoded_path = google.maps.geometry.encoding.decodePath(data.polyline);
    path_options = {
      path: decoded_path,
      strokeColor: "#FF0000",
      strokeOpacity: 0.5,
      strokeWeight: 5
    };
    run_path = new google.maps.Polyline(path_options);
    run_path.setMap(map);
    return map.fitBounds(calc_bounds(run_path));
  };

  calc_bounds = function(run_path) {
    var b, gm_path, i, path_length;
    b = new google.maps.LatLngBounds();
    gm_path = run_path.getPath();
    path_length = gm_path.getLength();
    i = [0, (path_length / 3).toFixed(0), (path_length / 3).toFixed(0) * 2];
    b.extend(gm_path.getAt(i[0]));
    b.extend(gm_path.getAt(i[1]));
    return b.extend(gm_path.getAt(i[2]));
  };

  $(function() {
    var map;
    map = gm_init();
    return load_run(js_run_id, map);
  });

}).call(this);
