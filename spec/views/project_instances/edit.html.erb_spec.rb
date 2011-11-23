require 'spec_helper'

describe "project_instances/edit.html.erb" do
  before(:each) do
    @project_instance = assign(:project_instance, stub_model(ProjectInstance,
      :name => "MyString",
      :project_class_id => 1,
      :owner_id => 1
    ))
  end

  it "renders the edit project_instance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_instances_path(@project_instance), :method => "post" do
      assert_select "input#project_instance_name", :name => "project_instance[name]"
      assert_select "input#project_instance_project_class_id", :name => "project_instance[project_class_id]"
      assert_select "input#project_instance_owner_id", :name => "project_instance[owner_id]"
    end
  end
end
