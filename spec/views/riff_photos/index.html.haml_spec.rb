require 'spec_helper'

describe "riff_photos/index" do
  before(:each) do
    assign(:riff_photos, [
      stub_model(RiffPhoto,
        :photo_name => "Photo Name",
        :owner => "Owner",
        :shoutout => "Shoutout"
      ),
      stub_model(RiffPhoto,
        :photo_name => "Photo Name",
        :owner => "Owner",
        :shoutout => "Shoutout"
      )
    ])
  end

  it "renders a list of riff_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Shoutout".to_s, :count => 2
  end
end
