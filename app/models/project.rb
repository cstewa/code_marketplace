class Project < ActiveRecord::Base
  attr_accessible :company, :description, :git_link, :name, :price
  belongs_to :founder
  has_and_belongs_to_many :developers
end
