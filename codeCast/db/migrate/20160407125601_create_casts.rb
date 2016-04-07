class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|

      t.string :title, null: false
      t.string :video_url, null: false, unique: true
      t.integer :user_id, null: false, index: true
      t.integer :tagging_id, index: true

      t.timestamps null: false
    end
  end
end
