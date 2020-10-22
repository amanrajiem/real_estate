require "application_system_test_case"

class CommecialUnitsTest < ApplicationSystemTestCase
  setup do
    @commecial_unit = commecial_units(:one)
  end

  test "visiting the index" do
    visit commecial_units_url
    assert_selector "h1", text: "Commecial Units"
  end

  test "creating a Commecial unit" do
    visit commecial_units_url
    click_on "New Commecial Unit"

    fill_in "Address", with: @commecial_unit.address
    fill_in "Owner", with: @commecial_unit.owner
    fill_in "Parking", with: @commecial_unit.parking
    fill_in "Price", with: @commecial_unit.price
    fill_in "Shops", with: @commecial_unit.shops
    fill_in "Sqmt", with: @commecial_unit.sqmt
    click_on "Create Commecial unit"

    assert_text "Commecial unit was successfully created"
    click_on "Back"
  end

  test "updating a Commecial unit" do
    visit commecial_units_url
    click_on "Edit", match: :first

    fill_in "Address", with: @commecial_unit.address
    fill_in "Owner", with: @commecial_unit.owner
    fill_in "Parking", with: @commecial_unit.parking
    fill_in "Price", with: @commecial_unit.price
    fill_in "Shops", with: @commecial_unit.shops
    fill_in "Sqmt", with: @commecial_unit.sqmt
    click_on "Update Commecial unit"

    assert_text "Commecial unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Commecial unit" do
    visit commecial_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commecial unit was successfully destroyed"
  end
end
