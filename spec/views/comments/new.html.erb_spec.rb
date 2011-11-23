require 'spec_helper'

describe "comments/new.html.erb" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :body => "MyString",
      :project_instance_id => 1,
      :author_id => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_body", :name => "comment[body]"
      assert_select "input#comment_project_instance_id", :name => "comment[project_instance_id]"
      assert_select "input#comment_author_id", :name => "comment[author_id]"
    end
  end
end
