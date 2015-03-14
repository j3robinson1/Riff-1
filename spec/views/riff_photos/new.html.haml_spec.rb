require 'spec_helper'

describe "riff_photos/new" do
  before(:each) do
    assign(:riff_photo, stub_model(RiffPhoto,
      :photo_name => "MyString",
      :owner => "MyString",
      :shoutout => "MyString"
    ).as_new_record)
  end

  it "renders new riff_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", riff_photos_path, "post" do
      assert_select "input#riff_photo_photo_name[name=?]", "riff_photo[photo_name]"
      assert_select "input#riff_photo_owner[name=?]", "riff_photo[owner]"
      assert_select "input#riff_photo_shoutout[name=?]", "riff_photo[shoutout]"
    end
  end
end
