class Rating < ActiveRecord::Base
  validates :rating, :cast_id, :user_id, presence: true
end
