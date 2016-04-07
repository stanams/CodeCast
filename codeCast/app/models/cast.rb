class Cast < ActiveRecord::Base
  validates :title, :video_url, :user_id, presence: true
  validates :video_url, uniqueness: true
end
