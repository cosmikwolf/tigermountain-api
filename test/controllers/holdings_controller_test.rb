require 'test_helper'

class HoldingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @holding = holdings(:one)
  end

  test "should get index" do
    get holdings_url
    assert_response :success
  end

  test "should create holding" do
    assert_difference('Holding.count') do
      post holdings_url, params: { holding: { cik: @holding.cik, city: @holding.city, companyname: @holding.companyname, currentreportdate: @holding.currentreportdate, filerid: @holding.filerid, issue_id: @holding.issue_id, issueid: @holding.issueid, issuetitle: @holding.issuetitle, marketvalue: @holding.marketvalue, marketvaluechange: @holding.marketvaluechange, owner_id: @holding.owner_id, ownername: @holding.ownername, phone: @holding.phone, portfoliopercent: @holding.portfoliopercent, priorreportdate: @holding.priorreportdate, querydate: @holding.querydate, sharesheld: @holding.sharesheld, sharesheldchange: @holding.sharesheldchange, sharesheldpercentchange: @holding.sharesheldpercentchange, sharesoutpercent: @holding.sharesoutpercent, state: @holding.state, street1: @holding.street1, street2: @holding.street2, street3: @holding.street3, ticker: @holding.ticker, zip: @holding.zip } }
    end

    assert_response 201
  end

  test "should show holding" do
    get holding_url(@holding)
    assert_response :success
  end

  test "should update holding" do
    patch holding_url(@holding), params: { holding: { cik: @holding.cik, city: @holding.city, companyname: @holding.companyname, currentreportdate: @holding.currentreportdate, filerid: @holding.filerid, issue_id: @holding.issue_id, issueid: @holding.issueid, issuetitle: @holding.issuetitle, marketvalue: @holding.marketvalue, marketvaluechange: @holding.marketvaluechange, owner_id: @holding.owner_id, ownername: @holding.ownername, phone: @holding.phone, portfoliopercent: @holding.portfoliopercent, priorreportdate: @holding.priorreportdate, querydate: @holding.querydate, sharesheld: @holding.sharesheld, sharesheldchange: @holding.sharesheldchange, sharesheldpercentchange: @holding.sharesheldpercentchange, sharesoutpercent: @holding.sharesoutpercent, state: @holding.state, street1: @holding.street1, street2: @holding.street2, street3: @holding.street3, ticker: @holding.ticker, zip: @holding.zip } }
    assert_response 200
  end

  test "should destroy holding" do
    assert_difference('Holding.count', -1) do
      delete holding_url(@holding)
    end

    assert_response 204
  end
end
