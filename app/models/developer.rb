class Developer < ActiveRecord::Base
  attr_accessible :github, :heroku, :price, :website

  has_and_belongs_to_many :languages
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :tags
  has_many :pending_projects
  has_one :user, :as => :profile

end
