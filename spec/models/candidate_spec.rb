require 'spec_helper'

describe Candidate do
	before { @candidate = Candidate.new(name: "Example User", email: "user@example.com") }
	# subject { @candidate }

	# it { should_have :name }
	# it { should_have :email }
	it "has a valid factory" 
  # install FactoryGirl & refactor
	
	 context "email is not present" do
    	before { @candidate.email = nil }
    	it { should_not be_valid }
    end
  
  	context "name is not present" do
  		before { @candidate.name = nil }
  		it { should_not be_valid }
  	end

  	it "has a valid email" # use simple regex with /@/ or ^.+@.+$ ; eventually use http://tfletcher.com/lib/rgb.rb
  	# OR validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

end
