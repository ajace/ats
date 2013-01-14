class Candidate < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :position

  # candidate email does not need to be unique, so that a candidate can re-apply
  # validates_presence_of :email
  # validates_format_of :email, with: /^.+@.+$/; not working correctly
  # validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  VALID_EMAIL_REGEX = /^.+@.+$/
  # /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    # not validating correctly
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  validates_length_of :name, :minimum => 3, :maximum => 50 #, :allow_blank => false
end
