class User < ActiveRecord::Base
  attr_accessible :group_id, :login, :password, :password_confirmation, :role_id
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :login
  validates_uniqueness_of :login

  has_one :grouping
  has_one :group, :through => :grouping
  has_many :message

  def self.authenticate(login, password)
    user = find_by_login(login)
    if user && user.password == password
      user
    else
      nil
    end
  end
end
