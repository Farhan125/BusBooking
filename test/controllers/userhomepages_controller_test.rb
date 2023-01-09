require "test_helper"

class UserhomepagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get userhomepages_show_url
    assert_response :success
  end

  test "should get book" do
    get userhomepages_book_url
    assert_response :success
  end
end
