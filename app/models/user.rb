class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save { self.email.downcase }

  validates :email, presence: true, format: { with: /^.+@.+$/ },
  				uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6, maximum: 8 }
  
end
