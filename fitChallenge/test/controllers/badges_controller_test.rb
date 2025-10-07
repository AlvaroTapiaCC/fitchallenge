require "test_helper"

class BadgesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get badge_index_url
    assert_response :success
  end

  test "should get show" do
    get badge_show_url
    assert_response :success
  end
end
