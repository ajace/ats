require 'spec_helper'

describe Candidate do
  
  context "new submission" do
  	subject { create(:candidate) }
    it "has a valid email" # use simple regex with /@/ or ^.+@.+$ ; eventually use http://tfletcher.com/lib/rgb.rb
    it "has a resume, portfolio or LinkedIn profile attached"
  end
end
