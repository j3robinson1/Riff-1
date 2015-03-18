require 'spec_helper'

describe "riffblobs/edit" do
  before(:each) do
    @riffblob = assign(:riffblob, stub_model(Riffblob,
      :photo_name => "MyString",
      :owner => "MyString",
      :shoutout => "MyString"
    ))
  end

  it "renders the edit riffblob form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", riffblob_path(@riffblob), "post" do
      assert_select "input#riffblob_photo_name[name=?]", "riffblob[photo_name]"
      assert_select "input#riffblob_owner[name=?]", "riffblob[owner]"
      assert_select "input#riffblob_shoutout[name=?]", "riffblob[shoutout]"
    end
  end
end
