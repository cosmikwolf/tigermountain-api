# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

puts "beginning"
issuesArray = Array.new
holdingsArray = Array.new
ownersArray = Array.new
puts Dir.pwd
['issues','holdings','owners'].each do |dataKind|
  Dir.glob( "rawData/" + dataKind + "/*") do |my_text_file|
    data_hash = JSON.parse(File.read(my_text_file))
    for i in 0..data_hash['result']['rows'].count-1 do
      parsedHash = Hash.new
      # parse out the data
      for x in 0..data_hash['result']['rows'][i]['values'].count-1 do
        field = data_hash['result']['rows'][i]['values'][x]['field']
        value = data_hash['result']['rows'][i]['values'][x]['value']
        #puts field.to_s + '------' + value.to_s
        parsedHash[field] = value;
      end
        # push the temp hash to the array
      case dataKind
      when 'issues'
        issuesArray.push(parsedHash)
      when  'holdings'
        holdingsArray.push(parsedHash)
      when 'owners'
        ownersArray.push(parsedHash)
      end

    end
  end
end

puts "middle "

puts issuesArray.count
puts ownersArray.count
puts holdingsArray.count

issuesObjectIssueIDHash = Hash.new
ownerObjectFilerIDHash = Hash.new
issuesObjectArray = Array.new

issuesArray.each do |individualissue|
  issue = Issue.create(
    companyname: individualissue["companyname"].to_s,
    sicdescription: individualissue["sicdescription"].to_s,
    price: individualissue["price"].to_f,
    sharesout: individualissue["sharesout"].to_f,
    sharesheld: individualissue["sharesheld"].to_f,
    isprimary: individualissue["isprimary"],
    activeonly: individualissue["activeonly"],
    issueid: individualissue["issueid"].to_i,
    companyid: individualissue["companyid"].to_i,
    numholders: individualissue["numholders"].to_i,
    industryid: individualissue["industryid"].to_i,
    sectorid: individualissue["sectorid"].to_i,
    exchangeid: individualissue["exchangeid"].to_i,
    cik: individualissue["cik"].to_i,
    sic: individualissue["sic"].to_i,
    zip: individualissue["zip"].to_i,
    phonecountrycode: individualissue["phonecountrycode"].to_i,
    phoneareacode: individualissue["phoneareacode"].to_i,
    phonenumber: individualissue["phonenumber"].to_i,
    numbernewholders: individualissue["numbernewholders"].to_i,
    numbuyers: individualissue["numbuyers"].to_i,
    numsellers: individualissue["numsellers"].to_i,
    numbersellouts: individualissue["numbersellouts"].to_i,
    sharesoutdate: individualissue["sharesoutdate"].to_s,
    pricedate: individualissue["pricedate"].to_s,
    country: individualissue["country"].to_s,
    street1: individualissue["street1"].to_s,
    street2: individualissue["street2"].to_s,
    city: individualissue["city"].to_s,
    state: individualissue["state"].to_s,
    exchange: individualissue["exchange"].to_s,
    ticker: individualissue["ticker"].to_s,
    sector: individualissue["sector"].to_s,
    type: individualissue["type"].to_s,
    querydate: individualissue["querydate"].to_s,
    issuetitle: individualissue["issuetitle"].to_s,
    industry: individualissue["industry"].to_s
  )
  issuesObjectIssueIDHash[individualissue["issueid"].to_i] = issue
  issuesObjectArray.push(issue)
  puts "created issue: " + individualissue["companyname"].to_s
end

ownersArray.each do |individualOwner|
  owner = Owner.create(
    portfoliovalue: individualOwner["portfoliovalue"].to_f,
    ownername: individualOwner["ownername"].to_s,
    street1: individualOwner["street1"].to_s,
    street2: individualOwner["street2"].to_s,
    street3: individualOwner["street3"].to_s,
    city: individualOwner["city"].to_s,
    state: individualOwner["state"].to_s,
    zip: individualOwner["zip"].to_s,
    phone: individualOwner["phone"].to_s,
    dcn: individualOwner["dcn"].to_s,
    newpositions: individualOwner["newpositions"].to_i,
    increasedpositions: individualOwner["increasedpositions"].to_i,
    decreasedpositions: individualOwner["decreasedpositions"].to_i,
    soldoutpositions: individualOwner["soldoutpositions"].to_i,
    filerid: individualOwner["filerid"].to_i,
    issuesheld: individualOwner["issuesheld"].to_i,
    cik: individualOwner["cik"].to_i
  )
  ownerObjectFilerIDHash[individualOwner["filerid"].to_i] = owner
  puts "created owner: " + individualOwner["ownername"].to_s

end

holdingsArray.each do |individalholding|
  Holding.create(
    issue: issuesObjectIssueIDHash[individalholding["issueid"].to_i],
    owner: ownerObjectFilerIDHash[individalholding["filerid"].to_i],
    issueid: individalholding["issueid"].to_i,
    filerid: individalholding["filerid"].to_i,
    cik: individalholding["cik"].to_i,
    sharesheld: individalholding["sharesheld"].to_f,
    sharesheldchange: individalholding["sharesheldchange"].to_f,
    sharesheldpercentchange: individalholding["sharesheldpercentchange"].to_f,
    marketvalue: individalholding["marketvalue"].to_f,
    marketvaluechange: individalholding["marketvaluechange"].to_f,
    portfoliopercent: individalholding["portfoliopercent"].to_f,
    sharesoutpercent: individalholding["sharesoutpercent"].to_f,
    ownername: individalholding["ownername"].to_s,
    querydate: individalholding["querydate"].to_s,
    ticker: individalholding["ticker"].to_s,
    companyname: individalholding["companyname"].to_s,
    issuetitle: individalholding["issuetitle"].to_s,
    currentreportdate: individalholding["currentreportdate"].to_s,
    priorreportdate: individalholding["priorreportdate"].to_s,
    street1: individalholding["street1"].to_s,
    street2: individalholding["street2"].to_s,
    street3: individalholding["street3"].to_s,
    city: individalholding["city"].to_s,
    state: individalholding["state"].to_s,
    zip: individalholding["zip"].to_s,
    phone: individalholding["phone"].to_s
  )
  puts "created holding: " + individalholding["ticker"].to_s + " " + individalholding["ownername"].to_s

end
puts "end"
