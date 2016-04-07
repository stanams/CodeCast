class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, unique: true
      t.string :session_token, null: false, index: true
      t.string :password_digest, null: false, unique: true
      t.text :bio
      t.string :profile_pic

      t.timestamps null: false
    end
  end
end
