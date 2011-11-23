require "spec_helper"

describe ProjectClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/project_classes").should route_to("project_classes#index")
    end

    it "routes to #new" do
      get("/project_classes/new").should route_to("project_classes#new")
    end

    it "routes to #show" do
      get("/project_classes/1").should route_to("project_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_classes/1/edit").should route_to("project_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_classes").should route_to("project_classes#create")
    end

    it "routes to #update" do
      put("/project_classes/1").should route_to("project_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_classes/1").should route_to("project_classes#destroy", :id => "1")
    end

  end
end
