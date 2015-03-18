require 'spec_helper'

describe "riffblobs/new" do
  before(:each) do
    assign(:riffblob, stub_model(Riffblob,
      :photo_name => "MyString",
      :owner => "MyString",
      :shoutout => "MyString"
    ).as_new_record)
  end

  it "renders new riffblob form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", riffblobs_path, "post" do
      assert_select "input#riffblob_photo_name[name=?]", "riffblob[photo_name]"
      assert_select "input#riffblob_owner[name=?]", "riffblob[owner]"
      assert_select "input#riffblob_shoutout[name=?]", "riffblob[shoutout]"
    end
  end
end
