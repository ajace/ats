require 'spec_helper'
# include Capybara::DSL

describe "Static pages" do

  describe "About page" do
    it "should have content 'Applicant Tracking System'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end

    it "should have the right title" do
	  	visit '/static_pages/about'
	  	page.should have_selector('title', :text => "Applicant Tracking System")
      # the above generates a bug in Capybara 2.0. I also read the bug but did not think to go back (hence Mr. Hartl's request in the very beginning of his tutorial to set the gems to the right version.)
      # http://stackoverflow.com/questions/14042731/rspec-not-matching-title
      # response.should contain("Applicant Tracking System"); still incorrect
      # response.should have_selector('title', :text => "Applicant Tracking System")
      # response.should have_title("Applicant Tracking System")
  	end
  end



end
