class Comment < ActiveRecord::Base
  validates :body, :cast_id, :user_id, presence: true
end
