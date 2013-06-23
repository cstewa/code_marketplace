class LanguagesProjects < ActiveRecord::Migration
  def change
  	create_table :languages_projects do |t|
  		t.integer :language_id
  		t.integer :project_id
  	end
  end
end
