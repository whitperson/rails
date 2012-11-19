class AddStocksTable < ActiveRecord::Migration
  def change
  	create_table :stocks do |t|
  	t.string :name
  	t.string :quote
  	t.string :avg
  	t.timestamps
  end
 end
end
