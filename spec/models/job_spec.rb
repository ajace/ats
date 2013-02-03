require 'spec_helper'

describe Job do
 
  context "creating" do
  	# candidate = FactoryGirl.build(:job)
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should have_many :candidates }
  end

end