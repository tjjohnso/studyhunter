require 'spec_helper'

describe "universities/show.html.erb" do
  before(:each) do
    @university = assign(:university, stub_model(University,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
