require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bookings_show_url
    assert_response :success
  end

  test "should get update" do
    get bookings_update_url
    assert_response :success
  end

  test "should get cancel" do
    get bookings_cancel_url
    assert_response :success
  end
end
