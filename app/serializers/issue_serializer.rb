class IssueSerializer < ActiveModel::Serializer
  attributes :id, :companyname, :sicdescription, :price, :sharesout, :sharesheld, :isprimary, :activeonly, :issueid, :companyid, :numholders, :industryid, :sectorid, :exchangeid, :cik, :sic, :zip, :phonecountrycode, :phoneareacode, :phonenumber, :numbernewholders, :numbuyers, :numsellers, :numbersellouts, :sharesoutdate, :pricedate, :country, :street1, :street2, :city, :state, :exchange, :ticker, :sector, :type, :querydate, :issuetitle, :industry
  has_many :holdings
end
