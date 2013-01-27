require "spec_helper"

describe PostletsController do
  describe "routing" do

    it "routes to #index" do
      get("/postlets").should route_to("postlets#index")
    end

    it "routes to #new" do
      get("/postlets/new").should route_to("postlets#new")
    end

    it "routes to #show" do
      get("/postlets/1").should route_to("postlets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/postlets/1/edit").should route_to("postlets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/postlets").should route_to("postlets#create")
    end

    it "routes to #update" do
      put("/postlets/1").should route_to("postlets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/postlets/1").should route_to("postlets#destroy", :id => "1")
    end

  end
end
