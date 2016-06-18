class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :portfoliovalue, :ownername, :street1, :street2, :street3, :city, :state, :zip, :phone, :dcn, :newpositions, :increasedpositions, :decreasedpositions, :soldoutpositions, :filerid, :issuesheld, :cik
  has_many :holdings
end
