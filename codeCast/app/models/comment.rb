class Comment < ActiveRecord::Base
  validates :body, :cast_id, :user_id, presence: true

  belongs_to :user
  belongs_to :cast
end
