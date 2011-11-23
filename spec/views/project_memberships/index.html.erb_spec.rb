require 'spec_helper'

describe "project_memberships/index.html.erb" do
  before(:each) do
    assign(:project_memberships, [
      stub_model(ProjectMembership,
        :project_instance_id => 1,
        :student_id => 1,
        :student_rights => "Student Rights"
      ),
      stub_model(ProjectMembership,
        :project_instance_id => 1,
        :student_id => 1,
        :student_rights => "Student Rights"
      )
    ])
  end

  it "renders a list of project_memberships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Rights".to_s, :count => 2
  end
end
