class Segment < ActiveRecord::Base
  belongs_to :run
  has_many :markers, :dependent => :destroy
  # attr_accessible :title, :body
end