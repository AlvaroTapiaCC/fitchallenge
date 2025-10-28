require "application_system_test_case"

class ProgressEntriesTest < ApplicationSystemTestCase
  setup do
    @progress_entry = progress_entries(:one)
  end

  test "visiting the index" do
    visit progress_entries_url
    assert_selector "h1", text: "Progress entries"
  end

  test "should create progress entry" do
    visit progress_entries_url
    click_on "New progress entry"

    click_on "Create Progress entry"

    assert_text "Progress entry was successfully created"
    click_on "Back"
  end

  test "should update Progress entry" do
    visit progress_entry_url(@progress_entry)
    click_on "Edit this progress entry", match: :first

    click_on "Update Progress entry"

    assert_text "Progress entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Progress entry" do
    visit progress_entry_url(@progress_entry)
    click_on "Destroy this progress entry", match: :first

    assert_text "Progress entry was successfully destroyed"
  end
end
