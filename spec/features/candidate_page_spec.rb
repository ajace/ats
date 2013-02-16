require 'spec_helper'

candidate = FactoryGirl.create(:candidate)

feature "Candidate fills in new application" do
	scenario "with valid info" do
		visit new_candidate_path
		fill_in 'Name', with: candidate.name
		fill_in 'Email', with: candidate.email
		fill_in 'Phone', with: candidate.phone
		fill_in 'Position', with: candidate.position
		click_button "Submit"
		
		page.should have_content('Successfully submitted')
	end

	scenario "but forgets email" do
		visit new_candidate_path
		fill_in 'Name', with: candidate.name
		fill_in 'Email', with: ""
		fill_in 'Phone', with: candidate.phone
		fill_in 'Position', with: candidate.position
		click_button "Submit"
		page.should_not have_content('Successfully submitted')
	end

	it "should not be able to submit without resume or portfolio or LinkedIn profile attached"
	it "should show client side validation", pending #http://railscasts.com/episodes/263-client-side-validations
	it "should have cover letter, Website, blog, Github or portfolio, and source Source How did you hear about us?:"

	# save_and_open_page
end