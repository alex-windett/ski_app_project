class Resort < ActiveRecord::Base
  attr_accessible :country_id, :description, :image, :name

  validate :country_id, presence: true
  validate :name, presence: true

  belongs_to :country
  has_many :runs

  validate :name, presence: true
  validate :country_id, presence: true
end
