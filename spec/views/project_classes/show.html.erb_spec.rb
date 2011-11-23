require 'spec_helper'

describe "project_classes/show.html.erb" do
  before(:each) do
    @project_class = assign(:project_class, stub_model(ProjectClass,
      :name => "Name",
      :course_id => 1,
      :creator_id => 1
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
