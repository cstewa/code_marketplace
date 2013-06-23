class AddUserAuthFieldsToFounders < ActiveRecord::Migration
  def change
  	add_column :founders, :email, :string
    add_column :founders, :password_digest, :string
  end
end
