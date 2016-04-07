class Tagging < ActiveRecord::Base
  validates :cast_id, :tag_id, presence: true
end
