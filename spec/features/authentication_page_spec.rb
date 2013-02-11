require 'spec_helper'

feature 'Admin signs in' do
	scenario 'with invalid information' do
		visit '/login'
		click_link 'Log In'

		page.should have_content 'Invalid'
		save_and_open_page
	end
end

  	# scenario 'with valid email and password' do
  	# 	visit '/login'
  	# 	fill_in 'Email', with: user.email
  	# 	fill_in 'Password', with: user.password
  	# 	click_link 'Log In'

   #    page.should have_content 'Logged in'
  	# end  
