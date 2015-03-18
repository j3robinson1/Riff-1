require 'spec_helper'

describe "riffblobs/show" do
  before(:each) do
    @riffblob = assign(:riffblob, stub_model(Riffblob,
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
