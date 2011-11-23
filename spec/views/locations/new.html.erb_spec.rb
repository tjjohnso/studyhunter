require 'spec_helper'

describe "locations/new.html.erb" do
  before(:each) do
    assign(:location, stub_model(Location,
      :name => "MyString",
      :address => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :gmaps => false,
      :amenities => "MyString",
      :overall_rating => 1.5
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path, :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_address", :name => "location[address]"
      assert_select "input#location_longitude", :name => "location[longitude]"
      assert_select "input#location_latitude", :name => "location[latitude]"
      assert_select "input#location_gmaps", :name => "location[gmaps]"
      assert_select "input#location_amenities", :name => "location[amenities]"
      assert_select "input#location_overall_rating", :name => "location[overall_rating]"
    end
  end
end
