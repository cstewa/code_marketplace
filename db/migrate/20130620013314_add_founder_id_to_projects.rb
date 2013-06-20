class AddFounderIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :founder_id, :integer
  end
end
