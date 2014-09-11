class Medium < ActiveRecord::Base
  attr_accessible :image, :run_id, :user_id, :video

  belongs_to :run

  validate :run_id, presence: true

  mount_uploader :image, MediaImageUploader
  mount_uploader :video, MediaVideoUploader

  # def set_success(format, opts)
  #   self.success = true
  # end

end
