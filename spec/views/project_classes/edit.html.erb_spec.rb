require 'spec_helper'

describe "project_classes/edit.html.erb" do
  before(:each) do
    @project_class = assign(:project_class, stub_model(ProjectClass,
      :name => "MyString",
      :course_id => 1,
      :creator_id => 1
    ))
  end

  it "renders the edit project_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_classes_path(@project_class), :method => "post" do
      assert_select "input#project_class_name", :name => "project_class[name]"
      assert_select "input#project_class_course_id", :name => "project_class[course_id]"
      assert_select "input#project_class_creator_id", :name => "project_class[creator_id]"
    end
  end
end
