require 'spec_helper'

describe "candidates/new" do
  before(:each) do
    assign(:candidate, stub_model(Candidate,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :position => "MyString"
    ).as_new_record)
  end

  it "renders new candidate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => candidates_path, :method => "post" do
      assert_select "input#candidate_name", :name => "candidate[name]"
      assert_select "input#candidate_email", :name => "candidate[email]"
      assert_select "input#candidate_phone", :name => "candidate[phone]"
      assert_select "input#candidate_position", :name => "candidate[position]"
    end
  end
end
