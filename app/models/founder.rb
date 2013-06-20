class Founder < ActiveRecord::Base
  attr_accessible :about, :company, :contact_email, :contact_linked_in, :contact_phone, :looking_for, :name
  has_many :projects
end
