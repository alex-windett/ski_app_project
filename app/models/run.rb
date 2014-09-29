class Run < ActiveRecord::Base
  attr_accessible :description, :name, :rating, :resort_id, :gpx, :user_id

  belongs_to :resort
  belongs_to :user
  has_many :segments, :dependent => :destroy
  has_many :markers, :through => :segments
  has_many :comments
  has_many :mediums, :dependent => :destroy

  validates :rating, :numericality => { :less_than_or_equal_to => 5, :allow_blank => true }
  validate :name, presence: true
  validate :resort_id, presence: true
  validate :gpx, presence: true

  has_attached_file :gpx

  before_save :parse_file


  # parsing the upladed gpx file with the Nokogiri
  def parse_file
    tempfile = gpx.queued_for_write[:original]
    doc = Nokogiri::XML(tempfile)
    parse_xml(doc)
  end

  def parse_xml(doc)
    begin 
        doc.root.elements.each do |node|
          parse_runs(node)
        end
    rescue

    end
  end

  def parse_runs(node)
    if node.node_name.eql? 'trk'
      node.elements.each do |node|
        parse_run_segments(node)
      end
    end
  end

   def parse_run_segments(node)
    if node.node_name.eql? 'trkseg'
      tmp_segment = Segment.new
      node.elements.each do |node|
        parse_markers(node,tmp_segment)
      end
      self.segments << tmp_segment
    end
  end

  def parse_markers(node,tmp_segment)
    if node.node_name.eql? 'trkpt'
      tmp_marker = Marker.new
      tmp_marker.latitude = node.attr("lat")
      tmp_marker.longitude = node.attr("lon")
      node.elements.each do |node|
        tmp_marker.elevation = node.text.to_s if node.name.eql? 'ele'
        tmp_marker.marker_created_at = node.text.to_s if node.name.eql? 'time'
      end
      tmp_segment.markers << tmp_marker
    end
  end
  # extracting the track, tracksegment and trackpoint from the
  # GPX file

  def polyline_markers
    self.markers.map(&:latlng)
  end

  def polyline
      Polylines::Encoder.encode_points(self.polyline_markers)
  end

end
