class DevelopersTags < ActiveRecord::Migration
  def change
  	create_table :developers_tags do |t|
  		t.integer :tag_id
  		t.integer :developer_id
  	end
  end
end
