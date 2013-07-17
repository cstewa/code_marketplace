class Founder < ActiveRecord::Base
  attr_accessible :linked_in

  has_and_belongs_to_many :projects
  has_and_belongs_to_many :tags
  has_many :pending_developers
  has_one :user, :as => :profile

end
