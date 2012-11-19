class AddMoviesTable < ActiveRecord::Migration
  def change
  	create_table :movies do |t|
	  	t.string :title
	  	t.integer :year
	  	t.string :rating
	  	t.string :runtime
	  	t.timestamps
  	end
  end 
end