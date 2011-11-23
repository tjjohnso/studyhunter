require "spec_helper"

describe StudySessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/study_sessions").should route_to("study_sessions#index")
    end

    it "routes to #new" do
      get("/study_sessions/new").should route_to("study_sessions#new")
    end

    it "routes to #show" do
      get("/study_sessions/1").should route_to("study_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/study_sessions/1/edit").should route_to("study_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/study_sessions").should route_to("study_sessions#create")
    end

    it "routes to #update" do
      put("/study_sessions/1").should route_to("study_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/study_sessions/1").should route_to("study_sessions#destroy", :id => "1")
    end

  end
end
