require 'spec_helper'

describe Candidate do
 
  context "new submission" do
  	candidate = FactoryGirl.create(:candidate)
  	
  	# it "has a name less than 50 characters" do
  	# 	length = candidate.name.length * 50
  	# 	length.should_not be_valid
  	# end
  	# its(:name.length) { should be < 50 }

	# it { should validate_presence_of :email }  # install Shoulda gem
 #  	it "requires an email" do
	# 	candidate.email = nil
	# 	candidate.should_not be_valid
		# end

	# subject { create(:candidate) }  		
	# its(:email) { should_not be_nil }

  	
  	it "and that email should have valid format" 
    # it "has a valid email" # use simple regex with /@/ or ^.+@.+$ ; eventually use http://tfletcher.com/lib/rgb.rb

    it "has a resume, portfolio or LinkedIn profile attached"
  end
end
