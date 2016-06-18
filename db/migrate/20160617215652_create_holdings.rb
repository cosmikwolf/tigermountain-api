class CreateHoldings < ActiveRecord::Migration[5.0]
  def change
    create_table :holdings do |t|
      t.references :issue, foreign_key: true
      t.references :owner, foreign_key: true
      t.integer :issueid
      t.string :ownername
      t.string :querydate
      t.decimal :sharesheld, precision: 20, scale: 2
      t.decimal :sharesheldchange, precision: 20, scale: 2
      t.decimal :sharesheldpercentchange, precision: 22, scale: 18
      t.decimal :marketvalue, precision: 20, scale: 2
      t.decimal :marketvaluechange, precision: 22, scale: 2
      t.decimal :portfoliopercent, precision: 22, scale: 18
      t.decimal :sharesoutpercent, precision: 22, scale: 18
      t.string :querydate
      t.string :ticker
      t.string :companyname
      t.string :issuetitle
      t.integer :filerid
      t.integer :cik

      t.string :currentreportdate
      t.string :priorreportdate
      t.string :street1
      t.string :street2
      t.string :street3
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
