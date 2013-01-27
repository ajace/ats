require 'spec_helper'

describe Candidate do
 
  context "creating" do
  	candidate = FactoryGirl.build(:candidate)
    it { should validate_presence_of(:email) }
    it { should validate_format_of(:email).with(/^.+@.+$/) } 
    it { should ensure_length_of(:name).is_at_least(3).is_at_most(50) }

    it "has a resume, portfolio or LinkedIn profile attached"
  end

  it { should have_one(:resume) }
end
