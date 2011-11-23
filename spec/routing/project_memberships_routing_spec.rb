require "spec_helper"

describe ProjectMembershipsController do
  describe "routing" do

    it "routes to #index" do
      get("/project_memberships").should route_to("project_memberships#index")
    end

    it "routes to #new" do
      get("/project_memberships/new").should route_to("project_memberships#new")
    end

    it "routes to #show" do
      get("/project_memberships/1").should route_to("project_memberships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_memberships/1/edit").should route_to("project_memberships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_memberships").should route_to("project_memberships#create")
    end

    it "routes to #update" do
      put("/project_memberships/1").should route_to("project_memberships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_memberships/1").should route_to("project_memberships#destroy", :id => "1")
    end

  end
end
