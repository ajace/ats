require 'spec_helper'

user = FactoryGirl.build(:user)

feature "Create new user" do
  	
    scenario "with valid info" do
  		visit new_user_path(user)
  		fill_in 'Name', with: user.name
  		fill_in 'Email', with: user.email
  		fill_in 'user_password', with: user.password
  		fill_in 'user_password_confirmation', with: user.password_confirmation
  		click_button 'Submit'
  		current_path.should eq('/')	
  	end

  	scenario "with an invalid password" do
  		visit new_user_path(user)
  		fill_in 'Name', with: user.name
  		fill_in 'Email', with: user.email
  		fill_in 'user_password', with: "short"
  		fill_in 'user_password_confirmation', with: "short"
  		click_button "Submit"
  		page.should have_content 'Passwordis too short'
  	end

    # save_and_open_page
end




	







