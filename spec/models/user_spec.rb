require 'spec_helper'

describe User do
  before(:each) { user = FactoryGirl.build(:user) }

  it { should validate_uniqueness_of(:email) }
  it { should validate_format_of(:email).with(/^.+@.+$/) }
  it { should validate_presence_of(:password) }

end
