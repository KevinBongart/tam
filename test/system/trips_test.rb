require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "creating a Trip" do
    visit trips_url
    click_on "New Trip"

    fill_in "Bikes allowed", with: @trip.bikes_allowed
    fill_in "Block", with: @trip.block_id
    fill_in "Direction", with: @trip.direction_id
    fill_in "Route", with: @trip.route_id
    fill_in "Service", with: @trip.service_id
    fill_in "Tam", with: @trip.tam_id
    fill_in "Trip headsign", with: @trip.trip_headsign
    fill_in "Wheelchair accessible", with: @trip.wheelchair_accessible
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "updating a Trip" do
    visit trips_url
    click_on "Edit", match: :first

    fill_in "Bikes allowed", with: @trip.bikes_allowed
    fill_in "Block", with: @trip.block_id
    fill_in "Direction", with: @trip.direction_id
    fill_in "Route", with: @trip.route_id
    fill_in "Service", with: @trip.service_id
    fill_in "Tam", with: @trip.tam_id
    fill_in "Trip headsign", with: @trip.trip_headsign
    fill_in "Wheelchair accessible", with: @trip.wheelchair_accessible
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip" do
    visit trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip was successfully destroyed"
  end
end
