require 'spec_helper'

describe "project_memberships/new.html.erb" do
  before(:each) do
    assign(:project_membership, stub_model(ProjectMembership,
      :project_instance_id => 1,
      :student_id => 1,
      :student_rights => "MyString"
    ).as_new_record)
  end

  it "renders new project_membership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_memberships_path, :method => "post" do
      assert_select "input#project_membership_project_instance_id", :name => "project_membership[project_instance_id]"
      assert_select "input#project_membership_student_id", :name => "project_membership[student_id]"
      assert_select "input#project_membership_student_rights", :name => "project_membership[student_rights]"
    end
  end
end
