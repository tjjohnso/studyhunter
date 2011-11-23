require 'spec_helper'

describe "project_classes/index.html.erb" do
  before(:each) do
    assign(:project_classes, [
      stub_model(ProjectClass,
        :name => "Name",
        :course_id => 1,
        :creator_id => 1
      ),
      stub_model(ProjectClass,
        :name => "Name",
        :course_id => 1,
        :creator_id => 1
      )
    ])
  end

  it "renders a list of project_classes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
