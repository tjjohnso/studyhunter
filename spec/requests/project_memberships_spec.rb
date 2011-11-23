require 'spec_helper'

describe "ProjectMemberships" do
  describe "GET /project_memberships" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get project_memberships_path
      response.status.should be(200)
    end
  end
end
