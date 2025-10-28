require "application_system_test_case"

class UserBadgesTest < ApplicationSystemTestCase
  setup do
    @user_badge = user_badges(:one)
  end

  test "visiting the index" do
    visit user_badges_url
    assert_selector "h1", text: "User badges"
  end

  test "should create user badge" do
    visit user_badges_url
    click_on "New user badge"

    click_on "Create User badge"

    assert_text "User badge was successfully created"
    click_on "Back"
  end

  test "should update User badge" do
    visit user_badge_url(@user_badge)
    click_on "Edit this user badge", match: :first

    click_on "Update User badge"

    assert_text "User badge was successfully updated"
    click_on "Back"
  end

  test "should destroy User badge" do
    visit user_badge_url(@user_badge)
    click_on "Destroy this user badge", match: :first

    assert_text "User badge was successfully destroyed"
  end
end
