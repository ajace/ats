require 'spec_helper'

user = FactoryGirl.create(:user)

feature 'User signs in' do
  	scenario 'with valid email and password' do
  		visit '/login'
  		fill_in 'Email', with: user.email
  		fill_in 'Password', with: user.password
  		click_link 'Log In'

  		expect(page).to have_content('Logged in')
  	end  
end

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
  		visit 'users/new'
  		fill_in 'Name', with: :name
  		fill_in 'Email', with: :email
  		fill_in 'user_password', with: "short"
  		fill_in 'user_password_confirmation', with: "short"
  		click_button "Submit"
  		page.should have_content 'Invalid email or password'
  	end

    # save_and_open_page
end




	







