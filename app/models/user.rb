class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :profile_type, :profile_id, :email, :password, :password_confirmation, :phone, :photo_url, :looking_for, :name, :company, :about_me

  belongs_to :profile, :polymorphic => true

  validates :email, :uniqueness => true

end
