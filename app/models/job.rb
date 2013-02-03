class Job < ActiveRecord::Base
  attr_accessible :candidate_id, :description, :name

  validates_presence_of :name
  validates_presence_of :description

  has_many :candidates
  
end
