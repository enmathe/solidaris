require 'rails_helper'

RSpec.describe "User dashboard", :type => :request do
  it "d" do
    user = User.create!(:username => "jdoe", :password => "secret")
    get "/account/missions"
    assert_select "form.login" do
      assert_select "input[name=?]", "username"
      assert_select "input[name=?]", "password"
      assert_select "input[type=?]", "submit"
    end

    post "/login", :username => "jdoe", :password => "secret"
    assert_select ".header .username", :text => "jdoe"
  end
end
