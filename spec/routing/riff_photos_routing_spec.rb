require "spec_helper"

describe RiffPhotosController do
  describe "routing" do

    it "routes to #index" do
      get("/riff_photos").should route_to("riff_photos#index")
    end

    it "routes to #new" do
      get("/riff_photos/new").should route_to("riff_photos#new")
    end

    it "routes to #show" do
      get("/riff_photos/1").should route_to("riff_photos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/riff_photos/1/edit").should route_to("riff_photos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/riff_photos").should route_to("riff_photos#create")
    end

    it "routes to #update" do
      put("/riff_photos/1").should route_to("riff_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/riff_photos/1").should route_to("riff_photos#destroy", :id => "1")
    end

  end
end
