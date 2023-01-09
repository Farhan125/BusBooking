require "test_helper"

class BusesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get buses_new_url
    assert_response :success
  end

  test "should get create" do
    get buses_create_url
    assert_response :success
  end

  test "should get show" do
    get buses_show_url
    assert_response :success
  end

  test "should get destroy" do
    get buses_destroy_url
    assert_response :success
  end
end
