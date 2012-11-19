class AddPetsTable < ActiveRecord::Migration
 def change
  	create_table :pets do |a|
  		a.string :name
  		a.integer :age
  		a.string :species
  		a.timestamps
  	end
  end
 end