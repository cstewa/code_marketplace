class Developer < ActiveRecord::Base
  has_secure_password
  attr_accessible :about, :contact_email, :contact_phone, :git_link, :looking_for, :name, :price, :photo_url, :email, :password, :password_confirmation
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :languages
  has_many :pending_projects
  validates :email, :uniqueness => true
end
