class HoldingSerializer < ActiveModel::Serializer
  attributes :id,   :issue,   :owner,   :issueid,   :filerid,   :cik,   :sharesheld,   :sharesheldchange,   :sharesheldpercentchange,   :marketvalue,   :marketvaluechange,   :portfoliopercent,   :sharesoutpercent,   :ownername,   :querydate,   :ticker,   :companyname,   :issuetitle,   :currentreportdate,   :priorreportdate,   :street1,   :street2,   :street3,   :city,   :state,   :zip,   :phone

  belongs_to :issue
  belongs_to :owner
 end
