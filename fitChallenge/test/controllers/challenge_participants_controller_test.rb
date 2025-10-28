require "test_helper"

class ChallengeParticipantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challenge_participant = challenge_participants(:one)
  end

  test "should get index" do
    get challenge_participants_url
    assert_response :success
  end

  test "should get new" do
    get new_challenge_participant_url
    assert_response :success
  end

  test "should create challenge_participant" do
    assert_difference("ChallengeParticipant.count") do
      post challenge_participants_url, params: { challenge_participant: {} }
    end

    assert_redirected_to challenge_participant_url(ChallengeParticipant.last)
  end

  test "should show challenge_participant" do
    get challenge_participant_url(@challenge_participant)
    assert_response :success
  end

  test "should get edit" do
    get edit_challenge_participant_url(@challenge_participant)
    assert_response :success
  end

  test "should update challenge_participant" do
    patch challenge_participant_url(@challenge_participant), params: { challenge_participant: {} }
    assert_redirected_to challenge_participant_url(@challenge_participant)
  end

  test "should destroy challenge_participant" do
    assert_difference("ChallengeParticipant.count", -1) do
      delete challenge_participant_url(@challenge_participant)
    end

    assert_redirected_to challenge_participants_url
  end
end
