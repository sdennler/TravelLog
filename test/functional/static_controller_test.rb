require 'test_helper'

class StaticControllerTest < ActionController::TestCase

  test "should get welcome" do
    get :welcome
    assert_response :success
    assert_select 'h2', 'Willkommen'
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select 'h2', 'Über'
    assert_select 'a.external', 'YAML'
  end

end
