require 'test_helper'

class OauthsControllerTest < ActionController::TestCase
  test "should get connect" do
    get :connect
    assert_response :success
  end

  test "should get callback" do
    get :callback
    assert_response :success
  end

end
