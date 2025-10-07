require "test_helper"

class ChallengeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get challenge_index_url
    assert_response :success
  end

  test "should get show" do
    get challenge_show_url
    assert_response :success
  end
end
