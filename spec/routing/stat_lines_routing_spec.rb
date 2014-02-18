require "spec_helper"

describe StatLinesController do
  describe "routing" do

    it "routes to #index" do
      get("/stat_lines").should route_to("stat_lines#index")
    end

    it "routes to #new" do
      get("/stat_lines/new").should route_to("stat_lines#new")
    end

    it "routes to #show" do
      get("/stat_lines/1").should route_to("stat_lines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stat_lines/1/edit").should route_to("stat_lines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stat_lines").should route_to("stat_lines#create")
    end

    it "routes to #update" do
      put("/stat_lines/1").should route_to("stat_lines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stat_lines/1").should route_to("stat_lines#destroy", :id => "1")
    end

  end
end
