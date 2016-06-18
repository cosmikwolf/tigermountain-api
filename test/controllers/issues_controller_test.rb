require 'test_helper'

class IssuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue = issues(:one)
  end

  test "should get index" do
    get issues_url
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post issues_url, params: { issue: { activeonly: @issue.activeonly, cik: @issue.cik, city: @issue.city, companyid: @issue.companyid, companyname: @issue.companyname, country: @issue.country, exchange: @issue.exchange, exchangeid: @issue.exchangeid, industry: @issue.industry, industryid: @issue.industryid, isprimary: @issue.isprimary, issuetitle: @issue.issuetitle, numbernewholders: @issue.numbernewholders, numbersellouts: @issue.numbersellouts, numbuyers: @issue.numbuyers, numholders: @issue.numholders, numsellers: @issue.numsellers, phoneareacode: @issue.phoneareacode, phonecountrycode: @issue.phonecountrycode, phonenumber: @issue.phonenumber, price: @issue.price, pricedate: @issue.pricedate, querydate: @issue.querydate, sector: @issue.sector, sectorid: @issue.sectorid, sharesheld: @issue.sharesheld, sharesout: @issue.sharesout, sharesoutdate: @issue.sharesoutdate, sic: @issue.sic, sicdescription: @issue.sicdescription, state: @issue.state, street1: @issue.street1, street2: @issue.street2, ticker: @issue.ticker, type: @issue.type, zip: @issue.zip } }
    end

    assert_response 201
  end

  test "should show issue" do
    get issue_url(@issue)
    assert_response :success
  end

  test "should update issue" do
    patch issue_url(@issue), params: { issue: { activeonly: @issue.activeonly, cik: @issue.cik, city: @issue.city, companyid: @issue.companyid, companyname: @issue.companyname, country: @issue.country, exchange: @issue.exchange, exchangeid: @issue.exchangeid, industry: @issue.industry, industryid: @issue.industryid, isprimary: @issue.isprimary, issuetitle: @issue.issuetitle, numbernewholders: @issue.numbernewholders, numbersellouts: @issue.numbersellouts, numbuyers: @issue.numbuyers, numholders: @issue.numholders, numsellers: @issue.numsellers, phoneareacode: @issue.phoneareacode, phonecountrycode: @issue.phonecountrycode, phonenumber: @issue.phonenumber, price: @issue.price, pricedate: @issue.pricedate, querydate: @issue.querydate, sector: @issue.sector, sectorid: @issue.sectorid, sharesheld: @issue.sharesheld, sharesout: @issue.sharesout, sharesoutdate: @issue.sharesoutdate, sic: @issue.sic, sicdescription: @issue.sicdescription, state: @issue.state, street1: @issue.street1, street2: @issue.street2, ticker: @issue.ticker, type: @issue.type, zip: @issue.zip } }
    assert_response 200
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete issue_url(@issue)
    end

    assert_response 204
  end
end
