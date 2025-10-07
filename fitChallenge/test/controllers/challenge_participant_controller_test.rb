require "test_helper"

class ChallengeParticipantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get challenge_participant_index_url
    assert_response :success
  end

  test "should get show" do
    get challenge_participant_show_url
    assert_response :success
  end
end
