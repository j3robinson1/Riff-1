require 'spec_helper'

describe "riffblobs/new" do
  before(:each) do
    assign(:riffblob, stub_model(Riffblob,
      :name => "MyString",
      :scr => "MyText",
      :_id => "MyString"
    ).as_new_record)
  end

  it "renders new riffblob form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", riffblobs_path, "post" do
      assert_select "input#riffblob_name[name=?]", "riffblob[name]"
      assert_select "textarea#riffblob_scr[name=?]", "riffblob[scr]"
      assert_select "input#riffblob__id[name=?]", "riffblob[_id]"
    end
  end
end
