require File.dirname(__FILE__) + '/../spec_helper'

describe Student do
  it "should be valid" do
    Student.new.should be_valid
  end
end
