class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.string :linked_in

      t.timestamps
    end
  end
end
