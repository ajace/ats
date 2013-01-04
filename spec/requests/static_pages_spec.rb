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
  	end
  end



end
