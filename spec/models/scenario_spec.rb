require 'spec_helper'

describe Scenario do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Scenario.create!(@valid_attributes)
  end
end
