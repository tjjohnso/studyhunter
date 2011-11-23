require 'spec_helper'

describe "universities/edit.html.erb" do
  before(:each) do
    @university = assign(:university, stub_model(University,
      :name => "MyString"
    ))
  end

  it "renders the edit university form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => universities_path(@university), :method => "post" do
      assert_select "input#university_name", :name => "university[name]"
    end
  end
end
