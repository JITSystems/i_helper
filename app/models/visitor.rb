class Visitor < ActiveRecord::Base
  attr_accessible :fio, :theme, :time, :user_id
end
