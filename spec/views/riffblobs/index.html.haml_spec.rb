require 'spec_helper'

describe "riffblobs/index" do
  before(:each) do
    assign(:riffblobs, [
      stub_model(Riffblob,
        :name => "Name",
        :scr => "MyText",
        :_id => "Id"
      ),
      stub_model(Riffblob,
        :name => "Name",
        :scr => "MyText",
        :_id => "Id"
      )
    ])
  end

  it "renders a list of riffblobs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Id".to_s, :count => 2
  end
end
