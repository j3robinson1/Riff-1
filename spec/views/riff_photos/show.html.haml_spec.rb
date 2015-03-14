require 'spec_helper'

describe "riff_photos/show" do
  before(:each) do
    @riff_photo = assign(:riff_photo, stub_model(RiffPhoto,
      :photo_name => "Photo Name",
      :owner => "Owner",
      :shoutout => "Shoutout"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo Name/)
    rendered.should match(/Owner/)
    rendered.should match(/Shoutout/)
  end
end
