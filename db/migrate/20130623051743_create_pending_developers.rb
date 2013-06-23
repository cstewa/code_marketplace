class CreatePendingDevelopers < ActiveRecord::Migration
  def change
    create_table :pending_developers do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
