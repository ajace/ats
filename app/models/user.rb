class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  validates_uniqueness_of :email
  # validates_presence_of :password, :on => create
end
