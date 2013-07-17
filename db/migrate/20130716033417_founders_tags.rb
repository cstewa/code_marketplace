class FoundersTags < ActiveRecord::Migration
  def change
  	create_table :fouders_tags do |t|
  		t.integer :tag_id
  		t.integer :founder_id
  	end
  end
end
