require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :email=>"some.user@studyemt.com"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
  
  it "should not accept a nil email" do
    user = User.create(@valid_attributes)
    assert user.valid?
    user.email = nil
    assert !user.valid?
  end
  
  after(:each) do
    MongoMapper.database.collections.each do |coll|
      coll.remove
    end
  end
end
