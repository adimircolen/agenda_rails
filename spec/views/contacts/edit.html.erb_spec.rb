require 'spec_helper'

describe "contacts/edit.html.erb" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :new_record? => false,
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contact_path(@contact), :method => "post" do
      assert_select "input#contact_first_name", :name => "contact[first_name]"
      assert_select "input#contact_middle_name", :name => "contact[middle_name]"
      assert_select "input#contact_last_name", :name => "contact[last_name]"
    end
  end
end
