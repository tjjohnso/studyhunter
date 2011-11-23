require 'spec_helper'

describe "project_memberships/show.html.erb" do
  before(:each) do
    @project_membership = assign(:project_membership, stub_model(ProjectMembership,
      :project_instance_id => 1,
      :student_id => 1,
      :student_rights => "Student Rights"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Rights/)
  end
end
