class Rating < ActiveRecord::Base
  validates :rating, :cast_id, :user_id, presence: true

  belongs_to :user
  belongs_to :cast
end
