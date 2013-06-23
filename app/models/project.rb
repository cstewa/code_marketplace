class Project < ActiveRecord::Base
  attr_accessible :company, :description, :git_link, :name, :price, :founder_id
  belongs_to :founder
  has_and_belongs_to_many :developers
  has_and_belongs_to_many :languages
  has_many :pending_developers
end
