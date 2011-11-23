require 'spec_helper'

describe "universities/new.html.erb" do
  before(:each) do
    assign(:university, stub_model(University,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new university form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => universities_path, :method => "post" do
      assert_select "input#university_name", :name => "university[name]"
    end
  end
end
