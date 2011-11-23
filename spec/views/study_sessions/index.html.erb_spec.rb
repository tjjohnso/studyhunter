require 'spec_helper'

describe "study_sessions/index.html.erb" do
  before(:each) do
    assign(:study_sessions, [
      stub_model(StudySession,
        :project_instance_id => 1,
        :location_id => 1
      ),
      stub_model(StudySession,
        :project_instance_id => 1,
        :location_id => 1
      )
    ])
  end

  it "renders a list of study_sessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
