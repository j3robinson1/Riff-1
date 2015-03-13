require 'spec_helper'

describe "riffblobs/edit" do
  before(:each) do
    @riffblob = assign(:riffblob, stub_model(Riffblob,
      :name => "MyString",
      :scr => "MyText",
      :_id => "MyString"
    ))
  end

  it "renders the edit riffblob form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", riffblob_path(@riffblob), "post" do
      assert_select "input#riffblob_name[name=?]", "riffblob[name]"
      assert_select "textarea#riffblob_scr[name=?]", "riffblob[scr]"
      assert_select "input#riffblob__id[name=?]", "riffblob[_id]"
    end
  end
end
