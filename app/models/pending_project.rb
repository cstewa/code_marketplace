class PendingProject < ActiveRecord::Base
  attr_accessible :developer_id, :name
  belongs_to :developer
end
