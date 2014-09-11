module RunsHelper

def google_maps_api_key
  "AIzaSyAqe6dTxwaIsaN2kpAoH-0N-wJWl8mOqdk"
end

def google_api_url
  "http://maps.googleapis.com/maps/api/js"
end

def google_api_access
  "#{google_api_url}?key=#{google_maps_api_key}&libraries=geometry&sensor=false"
end

def google_maps_api
  content_tag(:script,:type => "text/javascript",:src => google_api_access) do
  end
end

# changing the run id from rails to js
def run_id_to_js(id)
  content_tag(:script, :type => "text/javascript") do
    "var js_run_id = "+id.to_s;
  end
end

end


#"http://maps.googleapis.com/maps/api/js?key=AIzaSyAqe6dTxwaIsaN2kpAoH-0N-wJWl8mOqdk&libraries=geometry&sensor=false"