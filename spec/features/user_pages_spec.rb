require 'spec_helper'

describe "User pages" do

	describe "Register User page" do
	  	let(:user) { create(:user)}
	  	  	
	  	it "can sign up" do
	  		visit signup_path #undefined method
	  		fill_in 'Name', with: :name
	  		fill_in 'Email', with: :email
			fill_in 'user_password', with: :password
			fill_in 'user_password_confirmation', with: :password_confirmation
			click_button "Create User"
			current_path.should eq('/dashboard')
			# page.should have_content('User created') # rspec syntax, update to Capybara at some point
	  	end
	end

	describe "UserDashboard" do
		it "is logged in"
		it "shows most recent candidate applications"
		it "can sort candidates by field"
		it "can search for candidates by name"
		it "can search for candidates by email"
		it "can log out"
	end

end

