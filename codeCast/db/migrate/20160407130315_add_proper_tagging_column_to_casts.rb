class AddProperTaggingColumnToCasts < ActiveRecord::Migration
  def change
     add_column :casts, :tagging_id, :integer, index: true
  end
end
