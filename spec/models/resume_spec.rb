require 'spec_helper'

describe Resume do
 
  context "creating" do
  	candidate = FactoryGirl.build(:resume)

  	it "should have a resume or portfolio attached; should be less than 2mb"
  
  end

  it { should belong_to(:candidate) }
end