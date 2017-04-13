require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end
