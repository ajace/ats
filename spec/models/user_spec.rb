require 'spec_helper'

describe User do
	# before(:each) { user = create(:user) }

	context "creates new user" do 
		before { user = build(:user) }
		it { should validate_uniqueness_of(:email) }
		it "should validate uniqueness at the db level" #6.22
		it { should validate_format_of(:email).with(/^.+@.+$/) }
		it { should validate_presence_of(:password) }
	end

	context "authenticates" do
		it { should respond_to(:authenticate) }

		context "and returns value of authenticate method" do
			before { @user = create(:user) }
			subject { @user }
			let(:found_user) { User.find_by_email(@user.email) }

			describe "with valid password" do
				it { should == found_user.authenticate(@user.password) }
			end

			describe "with invalid password" do
				let(:user_for_invalid_password) { found_user.authenticate("invalid") }

				it { should_not == user_for_invalid_password }
				specify { user_for_invalid_password.should be_false } # specify is synonym for it
			end
		end
	end

end
