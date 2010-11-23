require 'spec_helper'

describe "contacts/show.html.erb" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :first_name => "First Name",
      :middle_name => "Middle Name",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Middle Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
  end
end
