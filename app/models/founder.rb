class Founder < ActiveRecord::Base
  has_secure_password
  attr_accessible :about, :company, :contact_email, :contact_linked_in, :contact_phone, :looking_for, :name, :photo_url
  has_many :projects
  validates :email, :uniqueness => true
end
