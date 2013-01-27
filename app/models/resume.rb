class Resume < ActiveRecord::Base
  attr_accessible :candidate_id

  belongs_to :candidate
end
