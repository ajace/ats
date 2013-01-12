require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "Register User page" do
  	let(:user) { FactoryGirl.create(:user)}
  	before { visit signup_path (user) }

    # visit '/signup' #undefined method

    it { should have_selector('h1',    text: 'Register User') }

    fill_in 'Name', with: "Sir Admin"
    fill_in 'Email', with: "admin@admin.com"
    

  end
end

