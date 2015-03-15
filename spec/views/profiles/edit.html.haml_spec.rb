require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :firstName => "MyString",
      :lastNmae => "MyString",
      :status => "MyText",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :Cell => 1,
      :Home => 1
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do
      assert_select "input#profile_firstName[name=?]", "profile[firstName]"
      assert_select "input#profile_lastNmae[name=?]", "profile[lastNmae]"
      assert_select "textarea#profile_status[name=?]", "profile[status]"
      assert_select "input#profile_address1[name=?]", "profile[address1]"
      assert_select "input#profile_address2[name=?]", "profile[address2]"
      assert_select "input#profile_city[name=?]", "profile[city]"
      assert_select "input#profile_state[name=?]", "profile[state]"
      assert_select "input#profile_zip[name=?]", "profile[zip]"
      assert_select "input#profile_Cell[name=?]", "profile[Cell]"
      assert_select "input#profile_Home[name=?]", "profile[Home]"
    end
  end
end
