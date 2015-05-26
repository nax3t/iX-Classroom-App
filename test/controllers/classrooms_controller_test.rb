require 'test_helper'

class ClassroomsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get classmates" do
    get :classmates
    assert_response :success
  end

end
