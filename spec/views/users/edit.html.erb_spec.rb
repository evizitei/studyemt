require 'spec_helper'

describe "/users/edit.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = @user = Factory(:user)
  end

  it "renders the edit user form" do
    render

    response.should have_tag("form[action=#{user_path(@user)}][method=post]") do
    end
  end
end
