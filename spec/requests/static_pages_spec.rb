require 'spec_helper'
# include Capybara::DSL

describe "StaticPages" do

  describe "GET /static_pages/about" do
    it "About page should have content 'Applicant Tracking System'" do
      visit '/static_pages/about'
      page.should have_content('Applicant Tracking System')
    end
  end

end

# Still causes undefinte method error on visit without 'include Capybara::DSL'
# feature "about page" do
# 	scenario "visit about page" do
# 		visit '/static_pages/about'
#     	page.should have_content('Applicant Tracking System') 
# 	end
# end

