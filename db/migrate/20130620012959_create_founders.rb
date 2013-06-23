class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.string :name
      t.string :company
      t.text :about
      t.text :looking_for
      t.string :contact_email
      t.integer :contact_phone
      t.string :contact_linked_in
      t.string :photo_url

      t.timestamps
    end
  end
end
