require "spec_helper"

describe RiffblobsController do
  describe "routing" do

    it "routes to #index" do
      get("/riffblobs").should route_to("riffblobs#index")
    end

    it "routes to #new" do
      get("/riffblobs/new").should route_to("riffblobs#new")
    end

    it "routes to #show" do
      get("/riffblobs/1").should route_to("riffblobs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/riffblobs/1/edit").should route_to("riffblobs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/riffblobs").should route_to("riffblobs#create")
    end

    it "routes to #update" do
      put("/riffblobs/1").should route_to("riffblobs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/riffblobs/1").should route_to("riffblobs#destroy", :id => "1")
    end

  end
end
