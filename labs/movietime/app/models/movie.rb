# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :integer
#  rating     :string(255)
#  runtime    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Movie < ActiveRecord::Base
	has_and_belongs_to_many :actors
	has_and_belongs_to_many :genres	
end
