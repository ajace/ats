require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "Register User page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Register User') }
  end
end

