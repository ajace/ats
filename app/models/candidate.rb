class Candidate < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :position, :resume_attributes

  # candidate email does not need to be unique, so that a candidate can re-apply
  validates_presence_of :email

  VALID_EMAIL_REGEX = /^.+@.+$/
  validates :email, format: { with: VALID_EMAIL_REGEX }

  validates_length_of :name, minimum: 3, maximum: 50 
  
  has_one :resume, dependent: :destroy
  accepts_nested_attributes_for :resume, allow_destroy: true
  
end
