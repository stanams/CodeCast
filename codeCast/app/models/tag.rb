class Tag < ActiveRecord::Base
  validates :name, :tagging_id, presence: true
end
