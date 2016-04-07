class Cast < ActiveRecord::Base
  validates :title, :video_url, :user_id, presence: true
  validates :video_url, uniqueness: true

  belongs_to :user

  has_many :comments
  has_many :ratings
  has_many :taggings
  has_many :tags, through: :taggings
end
