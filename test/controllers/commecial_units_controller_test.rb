require 'test_helper'

class CommecialUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commecial_unit = commecial_units(:one)
  end

  test "should get index" do
    get commecial_units_url
    assert_response :success
  end

  test "should get new" do
    get new_commecial_unit_url
    assert_response :success
  end

  test "should create commecial_unit" do
    assert_difference('CommecialUnit.count') do
      post commecial_units_url, params: { commecial_unit: { address: @commecial_unit.address, owner: @commecial_unit.owner, parking: @commecial_unit.parking, price: @commecial_unit.price, shops: @commecial_unit.shops, sqmt: @commecial_unit.sqmt } }
    end

    assert_redirected_to commecial_unit_url(CommecialUnit.last)
  end

  test "should show commecial_unit" do
    get commecial_unit_url(@commecial_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_commecial_unit_url(@commecial_unit)
    assert_response :success
  end

  test "should update commecial_unit" do
    patch commecial_unit_url(@commecial_unit), params: { commecial_unit: { address: @commecial_unit.address, owner: @commecial_unit.owner, parking: @commecial_unit.parking, price: @commecial_unit.price, shops: @commecial_unit.shops, sqmt: @commecial_unit.sqmt } }
    assert_redirected_to commecial_unit_url(@commecial_unit)
  end

  test "should destroy commecial_unit" do
    assert_difference('CommecialUnit.count', -1) do
      delete commecial_unit_url(@commecial_unit)
    end

    assert_redirected_to commecial_units_url
  end
end
