class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.integer :filerid
      t.string :ownername
      t.integer :issuesheld
      t.decimal :portfoliovalue, precision: 20, scale: 2
      t.integer :cik
      t.string :street1
      t.string :street2
      t.string :street3
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :dcn
      t.integer :newpositions
      t.integer :increasedpositions
      t.integer :decreasedpositions
      t.integer :soldoutpositions

      t.timestamps
    end
  end
end
