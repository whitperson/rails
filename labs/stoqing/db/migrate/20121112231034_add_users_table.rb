class AddUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |u|
	  	u.string :name
	  	u.string :password
	  	u.timestamps
	  end
  end
end