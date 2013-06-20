class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :company
      t.text :description
      t.string :price
      t.string :git_link

      t.timestamps
    end
  end
end
