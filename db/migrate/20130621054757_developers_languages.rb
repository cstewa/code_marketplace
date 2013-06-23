class DevelopersLanguages < ActiveRecord::Migration
  def change
  	create_table :developers_languages do |t|
  		t.integer :developer_id
  		t.integer :language_id
  	end
  end
end
