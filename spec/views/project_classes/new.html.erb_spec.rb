require 'spec_helper'

describe "project_classes/new.html.erb" do
  before(:each) do
    assign(:project_class, stub_model(ProjectClass,
      :name => "MyString",
      :course_id => 1,
      :creator_id => 1
    ).as_new_record)
  end

  it "renders new project_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_classes_path, :method => "post" do
      assert_select "input#project_class_name", :name => "project_class[name]"
      assert_select "input#project_class_course_id", :name => "project_class[course_id]"
      assert_select "input#project_class_creator_id", :name => "project_class[creator_id]"
    end
  end
end
