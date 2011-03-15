require 'spec_helper'

describe "phones/index.html.erb" do
  before(:each) do
    assign(:phones, [
      stub_model(Phone,
        :phone => "Phone",
        :type => "Type"
      ),
      stub_model(Phone,
        :phone => "Phone",
        :type => "Type"
      )
    ])
  end

  it "renders a list of phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
