require 'spec_helper'

describe "study_sessions/new.html.erb" do
  before(:each) do
    assign(:study_session, stub_model(StudySession,
      :project_instance_id => 1,
      :location_id => 1
    ).as_new_record)
  end

  it "renders new study_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => study_sessions_path, :method => "post" do
      assert_select "input#study_session_project_instance_id", :name => "study_session[project_instance_id]"
      assert_select "input#study_session_location_id", :name => "study_session[location_id]"
    end
  end
end
