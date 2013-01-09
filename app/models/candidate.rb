class Candidate < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :position
end
