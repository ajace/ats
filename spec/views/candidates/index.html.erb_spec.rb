require 'spec_helper'

describe "candidates/index" do
  before(:each) do
    assign(:candidates, [
      stub_model(Candidate,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :position => "Position"
      ),
      stub_model(Candidate,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :position => "Position"
      )
    ])
  end

  it "renders a list of candidates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
