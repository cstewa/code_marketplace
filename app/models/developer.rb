class Developer < ActiveRecord::Base
  attr_accessible :about, :contact_email, :contact_phone, :git_link, :looking_for, :name, :price
  has_and_belongs_to_many :projects
end
