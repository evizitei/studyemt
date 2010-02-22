require 'spec_helper'

describe "/users/index.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:users] = [
      Factory(:user),
      Factory(:user)
    ]
  end

  it "renders a list of users" do
    render
  end
end
