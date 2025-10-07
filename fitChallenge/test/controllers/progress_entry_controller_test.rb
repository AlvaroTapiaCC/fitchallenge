require "test_helper"

class ProgressEntryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get progress_entry_index_url
    assert_response :success
  end

  test "should get show" do
    get progress_entry_show_url
    assert_response :success
  end
end
