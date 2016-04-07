class RemoveTaggingColumnFromCasts < ActiveRecord::Migration
  def change
    remove_column :casts, :tagging_id
  end
end
