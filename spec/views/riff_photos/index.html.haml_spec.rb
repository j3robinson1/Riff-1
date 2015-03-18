require 'spec_helper'

describe "riffblobs/index" do
  before(:each) do
    assign(:riffblobs, [
      stub_model(Riffblob,
        :photo_name => "Photo Name",
        :owner => "Owner",
        :shoutout => "Shoutout"
      ),
      stub_model(Riffblob,
        :photo_name => "Photo Name",
        :owner => "Owner",
        :shoutout => "Shoutout"
      )
    ])
  end

  it "renders a list of riffblobs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Shoutout".to_s, :count => 2
  end
end
