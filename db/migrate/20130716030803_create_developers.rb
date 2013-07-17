class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :price
      t.string :github
      t.string :heroku
      t.string :website

      t.timestamps
    end
  end
end
