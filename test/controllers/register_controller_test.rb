require "test_helper"

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get register_signup_url
    assert_response :success
  end
end
