require 'spec_helper'

describe "CandidatePage" do

	context "candidate fills in new application" do
		# FactoryGirl is causing issues with before block, try using DatabaseCleaner gem when refactoring
		# before(:each) do 
		# 	# candidate = FactoryGirl.create(:candidate) # try without FactoryGirl
		# 	# @candidate = Candidate.new
		# 	# visit '/candidates/new'
		# 	visit new_candidate_path
	 #  		fill_in 'Name', with: :name
	 #  		# fill_in 'Email', with: :email # causes 1 error prohibited this candidate from being saved: Email is invalid Name Email Phone Position"; try the Faker gem
	 #  		fill_in 'Email', with: 'john@doe.com'	# works
	 #  		fill_in 'Phone', with: :phone
	 #  		fill_in 'Position', awith: :position
		# 	click_button "Submit"
		# end
		# http://stackoverflow.com/questions/12963095/capybara-not-working-with-factory-girl
		
		it "submits new application" do
			visit new_candidate_path
	  		fill_in 'Name', with: "John Doe"
	  		fill_in 'Email', with: 'john@doe.com'	# works
	  		fill_in 'Phone', with: "11111111111"
	  		fill_in 'Position', with: "Developer"
			click_button "Submit"
			page.should have_content('Successfully submitted')
		end

		it "should not be able to submit without email" do
			visit new_candidate_path
	  		fill_in 'Name', with: "John Doe"
	  		fill_in 'Email', with: ''
	  		fill_in 'Phone', with: "11111111111"
	  		fill_in 'Position', with: "Developer"
			click_button "Submit"
			page.should_not have_content('Successfully submitted')
		end

		it "should not be able to submit without resume or portfolio or LinkedIn profile attached"
		it "should show client side validation", pending #http://railscasts.com/episodes/263-client-side-validations
		it "should have cover letter, Website, blog, Github or portfolio, and source Source How did you hear about us?:"
	end	

	context "administration" do
	end
end
