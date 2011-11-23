require 'spec_helper'

describe "study_sessions/show.html.erb" do
  before(:each) do
    @study_session = assign(:study_session, stub_model(StudySession,
      :project_instance_id => 1,
      :location_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
