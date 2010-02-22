require 'spec_helper'

describe "/users/new.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = Factory.build(:user)
  end

  it "renders new user form" do
    render

    response.should have_tag("form[action=?][method=post]", users_path) do
    end
  end
end
