class Tag < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :developers
  has_and_belongs_to_many :founders
  has_and_belongs_to_many :projects
end
