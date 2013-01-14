require 'spec_helper'

describe "CandidatePage" do
	before (:each) { candidate = FactoryGirl.create(:candidate)	}

	context "candidate fills in new application" do
		it "submits new application" do
			visit '/candidates/new'
	  		fill_in 'Name', with: :name
	  		fill_in 'Email', with: :email
	  		fill_in 'Phone', with: :phone
	  		fill_in 'Position', with: :position
			click_button "Submit"
			# current_path.should eq(new_candidate_path)
			page.should have_content('Successfully submitted') # rspec syntax, update to Capybara at some point
		end

		it "should not be able to submit without email" do
			visit '/candidates/new'
	  		fill_in 'Name', with: :name
	  		fill_in 'Email', with: ""
	  		fill_in 'Phone', with: :phone
	  		fill_in 'Position', with: :position
			click_button "Submit"
			page.should_not have_content('Successfully submitted') # rspec syntax, update to Capybara at some point
		end

		it "should not be able to submit without resume or portfolio or LinkedIn profile attached"
		it "should show client side validation", pending #http://railscasts.com/episodes/263-client-side-validations
	end	
end
