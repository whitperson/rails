class AddStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |s|
      s.string :symbol
      s.decimal :quote
      s.timestamps
    end
  end
end