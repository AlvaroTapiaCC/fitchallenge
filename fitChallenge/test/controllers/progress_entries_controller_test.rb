require "test_helper"

class ProgressEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progress_entry = progress_entries(:one)
  end

  test "should get index" do
    get progress_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_progress_entry_url
    assert_response :success
  end

  test "should create progress_entry" do
    assert_difference("ProgressEntry.count") do
      post progress_entries_url, params: { progress_entry: {} }
    end

    assert_redirected_to progress_entry_url(ProgressEntry.last)
  end

  test "should show progress_entry" do
    get progress_entry_url(@progress_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_progress_entry_url(@progress_entry)
    assert_response :success
  end

  test "should update progress_entry" do
    patch progress_entry_url(@progress_entry), params: { progress_entry: {} }
    assert_redirected_to progress_entry_url(@progress_entry)
  end

  test "should destroy progress_entry" do
    assert_difference("ProgressEntry.count", -1) do
      delete progress_entry_url(@progress_entry)
    end

    assert_redirected_to progress_entries_url
  end
end
