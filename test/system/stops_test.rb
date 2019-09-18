require "application_system_test_case"

class StopsTest < ApplicationSystemTestCase
  setup do
    @stop = stops(:one)
  end

  test "visiting the index" do
    visit stops_url
    assert_selector "h1", text: "Stops"
  end

  test "creating a Stop" do
    visit stops_url
    click_on "New Stop"

    fill_in "Code", with: @stop.code
    fill_in "Lat", with: @stop.lat
    fill_in "Location type", with: @stop.location_type
    fill_in "Long", with: @stop.long
    fill_in "Name", with: @stop.name
    fill_in "Parent stop", with: @stop.parent_stop_id
    fill_in "Tam", with: @stop.tam_id
    click_on "Create Stop"

    assert_text "Stop was successfully created"
    click_on "Back"
  end

  test "updating a Stop" do
    visit stops_url
    click_on "Edit", match: :first

    fill_in "Code", with: @stop.code
    fill_in "Lat", with: @stop.lat
    fill_in "Location type", with: @stop.location_type
    fill_in "Long", with: @stop.long
    fill_in "Name", with: @stop.name
    fill_in "Parent stop", with: @stop.parent_stop_id
    fill_in "Tam", with: @stop.tam_id
    click_on "Update Stop"

    assert_text "Stop was successfully updated"
    click_on "Back"
  end

  test "destroying a Stop" do
    visit stops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stop was successfully destroyed"
  end
end
