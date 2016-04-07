class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|

      t.integer :rating, null: false, index: true #useful when we'll search by rate
      t.integer :user_id, null: false, index: true
      t.integer :cast_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
