require "test_helper"

class ConfirmedRoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get confirmed_routes_new_url
    assert_response :success
  end

  test "should get show" do
    get confirmed_routes_show_url
    assert_response :success
  end

  test "should get update" do
    get confirmed_routes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get confirmed_routes_destroy_url
    assert_response :success
  end
end
