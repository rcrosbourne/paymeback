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
  test "header and footer content" do
  	get :home
  	assert_select 'p.credit', /#{company_name}/  
  	assert_select 'a', /About/ #header contains about page and home page
  	assert_select 'a', /Home/	
  end

  test "about page" do
  	get :about
  	assert_response :success
  end


end
