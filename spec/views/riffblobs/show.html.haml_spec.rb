require 'spec_helper'

describe "riffblobs/show" do
  before(:each) do
    @riffblob = assign(:riffblob, stub_model(Riffblob,
      :name => "Name",
      :scr => "MyText",
      :_id => "Id"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Id/)
  end
end
