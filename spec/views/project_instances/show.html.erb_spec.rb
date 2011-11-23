require 'spec_helper'

describe "project_instances/show.html.erb" do
  before(:each) do
    @project_instance = assign(:project_instance, stub_model(ProjectInstance,
      :name => "Name",
      :project_class_id => 1,
      :owner_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
