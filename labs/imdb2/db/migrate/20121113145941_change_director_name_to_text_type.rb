class ChangeDirectorNameToTextType < ActiveRecord::Migration
  def change
  	change_column :movies, :director_name, :text 
  end
end
