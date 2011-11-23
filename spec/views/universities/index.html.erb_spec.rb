require 'spec_helper'

describe "universities/index.html.erb" do
  before(:each) do
    assign(:universities, [
      stub_model(University,
        :name => "Name"
      ),
      stub_model(University,
        :name => "Name"
      )
    ])
  end

  it "renders a list of universities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
