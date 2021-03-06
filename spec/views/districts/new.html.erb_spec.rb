require 'spec_helper'

describe "districts/new.html.erb" do
  before(:each) do
    assign(:district, stub_model(District,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new district form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => districts_path, :method => "post" do
      assert_select "input#district_name", :name => "district[name]"
    end
  end
end
