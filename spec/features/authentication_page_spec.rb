require 'spec_helper'

feature 'Admin signs in' do
	scenario 'with invalid information' do
		visit login_path
		click_link 'Log In'

    page.should have_content('Invalid email or password. Please try again')
	end

  scenario 'with valid email and password' do
    user = FactoryGirl.create(:user)  # build and save user first
    visit login_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_link 'Log In'

    page.should have_content 'Logged in'
  end  

  scenario "after visiting another page" do
    visit login_path
    click_link 'Admin Log In'
    page.should_not have_selector('div.alert.alert-error')
  end
end