class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.integer :companyid
      t.integer :issueid
      t.string :companyname
      t.string :sicdescription
      t.decimal :price, precision: 15, scale: 2
      t.decimal :sharesout, precision: 15, scale: 2
      t.decimal :sharesheld, precision: 15, scale: 2
      t.integer :numholders
      t.integer :industryid
      t.string :industry
      t.integer :sectorid
      t.string :sector
      t.string :type
      t.string :querydate
      t.string :issuetitle
      t.boolean :isprimary
      t.boolean :activeonly
      t.string :ticker
      t.integer :exchangeid
      t.string :exchange
      t.integer :cik
      t.integer :sic
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.integer :phonecountrycode
      t.integer :phoneareacode
      t.integer :phonenumber
      t.string :sharesoutdate
      t.string :pricedate
      t.integer :numbernewholders
      t.integer :numbuyers
      t.integer :numsellers
      t.integer :numbersellouts

      t.timestamps
    end
  end
end
