require "application_system_test_case"

class TransfersTest < ApplicationSystemTestCase
  setup do
    @transfer = transfers(:one)
  end

  test "visiting the index" do
    visit transfers_url
    assert_selector "h1", text: "Transfers"
  end

  test "creating a Transfer" do
    visit transfers_url
    click_on "New Transfer"

    fill_in "From stop", with: @transfer.from_stop_id
    fill_in "Min transfer time", with: @transfer.min_transfer_time
    fill_in "To stop", with: @transfer.to_stop_id
    fill_in "Transfer type", with: @transfer.transfer_type
    click_on "Create Transfer"

    assert_text "Transfer was successfully created"
    click_on "Back"
  end

  test "updating a Transfer" do
    visit transfers_url
    click_on "Edit", match: :first

    fill_in "From stop", with: @transfer.from_stop_id
    fill_in "Min transfer time", with: @transfer.min_transfer_time
    fill_in "To stop", with: @transfer.to_stop_id
    fill_in "Transfer type", with: @transfer.transfer_type
    click_on "Update Transfer"

    assert_text "Transfer was successfully updated"
    click_on "Back"
  end

  test "destroying a Transfer" do
    visit transfers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transfer was successfully destroyed"
  end
end
