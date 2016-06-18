require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner = owners(:one)
  end

  test "should get index" do
    get owners_url
    assert_response :success
  end

  test "should create owner" do
    assert_difference('Owner.count') do
      post owners_url, params: { owner: { cik: @owner.cik, city: @owner.city, dcn: @owner.dcn, decreasedpositions: @owner.decreasedpositions, filerid: @owner.filerid, increasedpositions: @owner.increasedpositions, issuesheld: @owner.issuesheld, newpositions: @owner.newpositions, ownername: @owner.ownername, phone: @owner.phone, portfoliovalue: @owner.portfoliovalue, soldoutpositions: @owner.soldoutpositions, state: @owner.state, street1: @owner.street1, street2: @owner.street2, street3: @owner.street3, zip: @owner.zip } }
    end

    assert_response 201
  end

  test "should show owner" do
    get owner_url(@owner)
    assert_response :success
  end

  test "should update owner" do
    patch owner_url(@owner), params: { owner: { cik: @owner.cik, city: @owner.city, dcn: @owner.dcn, decreasedpositions: @owner.decreasedpositions, filerid: @owner.filerid, increasedpositions: @owner.increasedpositions, issuesheld: @owner.issuesheld, newpositions: @owner.newpositions, ownername: @owner.ownername, phone: @owner.phone, portfoliovalue: @owner.portfoliovalue, soldoutpositions: @owner.soldoutpositions, state: @owner.state, street1: @owner.street1, street2: @owner.street2, street3: @owner.street3, zip: @owner.zip } }
    assert_response 200
  end

  test "should destroy owner" do
    assert_difference('Owner.count', -1) do
      delete owner_url(@owner)
    end

    assert_response 204
  end
end
