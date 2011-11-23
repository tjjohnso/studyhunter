require "spec_helper"

describe ProjectInstancesController do
  describe "routing" do

    it "routes to #index" do
      get("/project_instances").should route_to("project_instances#index")
    end

    it "routes to #new" do
      get("/project_instances/new").should route_to("project_instances#new")
    end

    it "routes to #show" do
      get("/project_instances/1").should route_to("project_instances#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_instances/1/edit").should route_to("project_instances#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_instances").should route_to("project_instances#create")
    end

    it "routes to #update" do
      put("/project_instances/1").should route_to("project_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_instances/1").should route_to("project_instances#destroy", :id => "1")
    end

  end
end
