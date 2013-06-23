class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :founders, :contact_phone, :string
  end
end
