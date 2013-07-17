class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :profile_type
      t.integer :profile_id
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :photo_url
      t.text :looking_for
      t.string :name
      t.boolean :is_admin
      t.string :company
      t.text :about_me


      t.timestamps
    end
  end
end
