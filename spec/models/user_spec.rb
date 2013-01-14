require 'spec_helper'

describe User do
  before(:each) { user = create(:user) }

  it { should validate_uniqueness_of(:email) }
  it "should validate uniqueness at the db level" #6.22
  it { should validate_format_of(:email).with(/^.+@.+$/) }
  it { should validate_presence_of(:password) }

end
