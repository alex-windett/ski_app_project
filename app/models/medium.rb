class Medium < ActiveRecord::Base
  attr_accessible :image, :run_id, :user_id, :video

  belongs_to :run

  validate :run_id, presence: true
  # validates_format_of :image, :with => %r{\.(png|jpg|jpeg)$}i
  # validates_format_of :video, :with => %r{\.(mp4)$}i

  mount_uploader :image, MediaImageUploader
  mount_uploader :video, MediaVideoUploader

  # def set_success(format, opts)
  #   self.success = true
  # end

end
