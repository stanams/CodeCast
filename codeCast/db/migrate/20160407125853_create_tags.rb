class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|

      t.string :name, null: false
      t.integer :tagging_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
