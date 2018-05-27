require "application_system_test_case"

class TransacsTest < ApplicationSystemTestCase
  setup do
    @transac = transacs(:one)
  end

  test "visiting the index" do
    visit transacs_url
    assert_selector "h1", text: "Transacs"
  end

  test "creating a Transac" do
    visit transacs_url
    click_on "New Transac"

    fill_in "Date", with: @transac.date
    fill_in "Item", with: @transac.item
    fill_in "Name", with: @transac.name
    fill_in "Quantity", with: @transac.quantity
    fill_in "Total", with: @transac.total
    click_on "Create Transac"

    assert_text "Transac was successfully created"
    click_on "Back"
  end

  test "updating a Transac" do
    visit transacs_url
    click_on "Edit", match: :first

    fill_in "Date", with: @transac.date
    fill_in "Item", with: @transac.item
    fill_in "Name", with: @transac.name
    fill_in "Quantity", with: @transac.quantity
    fill_in "Total", with: @transac.total
    click_on "Update Transac"

    assert_text "Transac was successfully updated"
    click_on "Back"
  end

  test "destroying a Transac" do
    visit transacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transac was successfully destroyed"
  end
end
