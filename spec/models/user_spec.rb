require 'spec_helper'

describe User do

  # before { @user = User.new(name: "Example User", email: "user@example.com") }


  # it { should respond_to(:name) }
  # it { should respond_to(:email) }

  # context "is invalid without an email" do
  #   before { @user.email = " " }
  #   it { should_not be_valid }
  # end

  # context "is invalid without a name" do
  #   before { @user.name = " " }
  #   it { should_not be_valid }
  # end

  # it "has a valid factory" do
  #   user = create(:user)
  #   # User.should be_valid
  # end
  
  context "register new user" do
    subject { create(:user) }
    it "has valid email"
    # Validation failed: Email has already been taken # might need to use DatabaseCleaner gem
    # it { should validate_uniqueness_of(:email) }
    # its(:email) { should be_valid }  #causing errors. why? do I need the should gem?
  end

end
