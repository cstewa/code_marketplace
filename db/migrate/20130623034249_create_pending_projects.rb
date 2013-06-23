class CreatePendingProjects < ActiveRecord::Migration
  def change
    create_table :pending_projects do |t|
      t.string :name
      t.integer :developer_id

      t.timestamps
    end
  end
end
