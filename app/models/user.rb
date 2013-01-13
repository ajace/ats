class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  validates_uniqueness_of :email
  validates_format_of :email, with: /^.+@.+$/
  validates_presence_of :password  # , :on => create; generates issues with Rspec
  
end
