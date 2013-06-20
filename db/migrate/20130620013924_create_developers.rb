class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.text :about
      t.text :looking_for
      t.string :price
      t.string :git_link
      t.string :contact_email
      t.integer :contact_phone

      t.timestamps
    end
  end
end
