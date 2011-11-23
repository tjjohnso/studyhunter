require 'spec_helper'

describe "project_instances/index.html.erb" do
  before(:each) do
    assign(:project_instances, [
      stub_model(ProjectInstance,
        :name => "Name",
        :project_class_id => 1,
        :owner_id => 1
      ),
      stub_model(ProjectInstance,
        :name => "Name",
        :project_class_id => 1,
        :owner_id => 1
      )
    ])
  end

  it "renders a list of project_instances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
