class Tagging < ActiveRecord::Base
  validates :cast_id, :tag_id, presence: true

  belongs_to :cast
  has_many :tags
end
