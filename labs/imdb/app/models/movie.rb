# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  gross        :decimal(, )
#  rating       :string(255)
#  tickets_sold :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Movie < ActiveRecord::Base # makes this movie class inherit from ActiveRecord for db
	attr_accessible :name, :description, :gross, :rating, :tickets_sold
end
