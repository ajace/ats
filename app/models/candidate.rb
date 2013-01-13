class Candidate < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :position

  # candidate email does not need to be unique, so that a candidate can re-apply
  validates_presence_of :email
  validates_format_of :email, with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  validates_length_of :name, :minimum => 3, :maximum => 50, :allow_blank => false
end
