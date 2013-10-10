require 'test_helper'


class StaticPagesControllerTest < ActionController::TestCase		
  include ApplicationHelper
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'h1', "Welcome to #{application_name}"
    assert_select 'a', "Sign in"
    assert_select 'a.navbar-brand', "#{application_name}"
  end


end
