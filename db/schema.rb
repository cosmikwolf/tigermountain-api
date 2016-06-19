# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160617215652) do

  create_table "holdings", force: :cascade do |t|
    t.integer  "issue_id"
    t.integer  "owner_id"
    t.integer  "issueid"
    t.string   "ownername"
    t.string   "querydate"
    t.decimal  "sharesheld",              precision: 20, scale: 2
    t.decimal  "sharesheldchange",        precision: 20, scale: 2
    t.decimal  "sharesheldpercentchange", precision: 22, scale: 18
    t.decimal  "marketvalue",             precision: 20, scale: 2
    t.decimal  "marketvaluechange",       precision: 22, scale: 2
    t.decimal  "portfoliopercent",        precision: 22, scale: 18
    t.decimal  "sharesoutpercent",        precision: 22, scale: 18
    t.string   "ticker"
    t.string   "companyname"
    t.string   "issuetitle"
    t.integer  "filerid"
    t.integer  "cik"
    t.string   "currentreportdate"
    t.string   "priorreportdate"
    t.string   "street1"
    t.string   "street2"
    t.string   "street3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.index ["issue_id"], name: "index_holdings_on_issue_id"
    t.index ["owner_id"], name: "index_holdings_on_owner_id"
  end

  create_table "issues", force: :cascade do |t|
    t.integer  "companyid"
    t.integer  "issueid"
    t.string   "companyname"
    t.string   "sicdescription"
    t.decimal  "price",            precision: 15, scale: 2
    t.decimal  "sharesout",        precision: 15, scale: 2
    t.decimal  "sharesheld",       precision: 15, scale: 2
    t.integer  "numholders"
    t.integer  "industryid"
    t.string   "industry"
    t.integer  "sectorid"
    t.string   "sector"
    t.string   "type"
    t.string   "querydate"
    t.string   "issuetitle"
    t.boolean  "isprimary"
    t.boolean  "activeonly"
    t.string   "ticker"
    t.integer  "exchangeid"
    t.string   "exchange"
    t.integer  "cik"
    t.integer  "sic"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "country"
    t.integer  "phonecountrycode"
    t.integer  "phoneareacode"
    t.integer  "phonenumber"
    t.string   "sharesoutdate"
    t.string   "pricedate"
    t.integer  "numbernewholders"
    t.integer  "numbuyers"
    t.integer  "numsellers"
    t.integer  "numbersellouts"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "owners", force: :cascade do |t|
    t.integer  "filerid"
    t.string   "ownername"
    t.integer  "issuesheld"
    t.decimal  "portfoliovalue",     precision: 20, scale: 2
    t.integer  "cik"
    t.string   "street1"
    t.string   "street2"
    t.string   "street3"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "dcn"
    t.integer  "newpositions"
    t.integer  "increasedpositions"
    t.integer  "decreasedpositions"
    t.integer  "soldoutpositions"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

end
