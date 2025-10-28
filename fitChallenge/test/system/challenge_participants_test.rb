require "application_system_test_case"

class ChallengeParticipantsTest < ApplicationSystemTestCase
  setup do
    @challenge_participant = challenge_participants(:one)
  end

  test "visiting the index" do
    visit challenge_participants_url
    assert_selector "h1", text: "Challenge participants"
  end

  test "should create challenge participant" do
    visit challenge_participants_url
    click_on "New challenge participant"

    click_on "Create Challenge participant"

    assert_text "Challenge participant was successfully created"
    click_on "Back"
  end

  test "should update Challenge participant" do
    visit challenge_participant_url(@challenge_participant)
    click_on "Edit this challenge participant", match: :first

    click_on "Update Challenge participant"

    assert_text "Challenge participant was successfully updated"
    click_on "Back"
  end

  test "should destroy Challenge participant" do
    visit challenge_participant_url(@challenge_participant)
    click_on "Destroy this challenge participant", match: :first

    assert_text "Challenge participant was successfully destroyed"
  end
end
