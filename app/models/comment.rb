class Comment < ActiveRecord::Base
  attr_accessible :content, :run_id, :user_id

  belongs_to :user
  belongs_to :run
end
