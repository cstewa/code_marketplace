class AddUserAuthFieldsToDevelopers < ActiveRecord::Migration
  def change
  	 add_column :developers, :email, :string
     add_column :developers, :password_digest, :string
  end
end
