class AddApartmentsTable < ActiveRecord::Migration
  def change
  	create_table :apartments do |a|
  		a.string :name
  		a.integer :rooms
  		a.decimal :rent
  		a.timestamps
  	end
  end
end
