require 'spec_helper'

describe "phones/show.html.erb" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :phone => "Phone",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
