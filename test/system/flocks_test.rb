require "application_system_test_case"

class FlocksTest < ApplicationSystemTestCase
  setup do
    @flock = flocks(:one)
  end

  test "visiting the index" do
    visit flocks_url
    assert_selector "h1", text: "Flocks"
  end

  test "creating a Flock" do
    visit flocks_url
    click_on "New Flock"

    fill_in "Age", with: @flock.age
    fill_in "Batch no", with: @flock.batch_no
    fill_in "Current stock", with: @flock.current_stock
    fill_in "Date in", with: @flock.date_in
    fill_in "Expected retirement date", with: @flock.expected_retirement_date
    fill_in "Flock stored", with: @flock.flock_stored
    fill_in "Flock type", with: @flock.flock_type
    fill_in "Initial stock", with: @flock.initial_stock
    fill_in "Notes", with: @flock.notes
    fill_in "Source", with: @flock.source
    fill_in "Status", with: @flock.status
    click_on "Create Flock"

    assert_text "Flock was successfully created"
    click_on "Back"
  end

  test "updating a Flock" do
    visit flocks_url
    click_on "Edit", match: :first

    fill_in "Age", with: @flock.age
    fill_in "Batch no", with: @flock.batch_no
    fill_in "Current stock", with: @flock.current_stock
    fill_in "Date in", with: @flock.date_in
    fill_in "Expected retirement date", with: @flock.expected_retirement_date
    fill_in "Flock stored", with: @flock.flock_stored
    fill_in "Flock type", with: @flock.flock_type
    fill_in "Initial stock", with: @flock.initial_stock
    fill_in "Notes", with: @flock.notes
    fill_in "Source", with: @flock.source
    fill_in "Status", with: @flock.status
    click_on "Update Flock"

    assert_text "Flock was successfully updated"
    click_on "Back"
  end

  test "destroying a Flock" do
    visit flocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flock was successfully destroyed"
  end
end
