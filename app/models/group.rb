class Group < ActiveRecord::Base
  attr_accessible :user_id

  belongs_to :grouping
  belongs_to :user, :through => :grouping
end
