require 'spec_helper'

describe "RiffPhotos" do
  describe "GET /riff_photos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get riff_photos_path
      response.status.should be(200)
    end
  end
end
