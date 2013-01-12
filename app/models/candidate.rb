class Candidate < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :position

  validates_format_of :email, with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
end
