require 'test_helper'

class BudgetControllerTest < ActionController::TestCase
  test "should get overall" do
    get :overall
    assert_response :success
  end

end
