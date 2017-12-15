require 'test_helper'

class Insta3sControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
