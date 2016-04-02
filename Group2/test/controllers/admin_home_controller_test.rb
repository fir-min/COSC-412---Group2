require 'test_helper'

class AdminHomeControllerTest < ActionController::TestCase
  test "should get admin_home" do
    get :admin_home
    assert_response :success
  end

end
