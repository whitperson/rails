class FixStudiosTableRemovedirectorId < ActiveRecord::Migration
  def change
       remove_column :studios, :director_id
  end
end