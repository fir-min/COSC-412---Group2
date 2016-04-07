require 'test_helper'

class UserConfigControllerTest < ActionController::TestCase
  test "should get addUser" do
    get :addUser
    assert_response :success
  end

  test "should get addUserType" do
    get :addUserType
    assert_response :success
  end

  test "should get editUser" do
    get :editUser
    assert_response :success
  end

  test "should get editUserType" do
    get :editUserType
    assert_response :success
  end

  test "should get removeUser" do
    get :removeUser
    assert_response :success
  end

  test "should get removeUserType" do
    get :removeUserType
    assert_response :success
  end

end
