require "test_helper"

class UserBadgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_badge = user_badges(:one)
  end

  test "should get index" do
    get user_badges_url
    assert_response :success
  end

  test "should get new" do
    get new_user_badge_url
    assert_response :success
  end

  test "should create user_badge" do
    assert_difference("UserBadge.count") do
      post user_badges_url, params: { user_badge: {} }
    end

    assert_redirected_to user_badge_url(UserBadge.last)
  end

  test "should show user_badge" do
    get user_badge_url(@user_badge)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_badge_url(@user_badge)
    assert_response :success
  end

  test "should update user_badge" do
    patch user_badge_url(@user_badge), params: { user_badge: {} }
    assert_redirected_to user_badge_url(@user_badge)
  end

  test "should destroy user_badge" do
    assert_difference("UserBadge.count", -1) do
      delete user_badge_url(@user_badge)
    end

    assert_redirected_to user_badges_url
  end
end
