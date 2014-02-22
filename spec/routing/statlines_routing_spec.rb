require "spec_helper"

describe StatlinesController do
  describe "routing" do

    it "routes to #index" do
      get("/statlines").should route_to("statlines#index")
    end

    it "routes to #new" do
      get("/statlines/new").should route_to("statlines#new")
    end

    it "routes to #show" do
      get("/statlines/1").should route_to("statlines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/statlines/1/edit").should route_to("statlines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/statlines").should route_to("statlines#create")
    end

    it "routes to #update" do
      put("/statlines/1").should route_to("statlines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/statlines/1").should route_to("statlines#destroy", :id => "1")
    end

  end
end
