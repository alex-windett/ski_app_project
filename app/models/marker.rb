class Marker < ActiveRecord::Base
  attr_accessible :point_created_at, :elevation, :latitude, :longitude, :run_id, :description, :segment_id

  belongs_to :segment

  def latlng
    [self.latitude,self.longitude]
  end
end
