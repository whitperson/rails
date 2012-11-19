# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  gender     :string(255)
#  email      :string(255)
#  address    :text
#  city       :string(255)
#  state      :string(255)
#  zipcode    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
	validates_with PersonValidator
	validates :name, :length => { :minimum => 3 } #if it doesnt have min. of 3 chars, doesn't get saved to DB
	validates :state, :length => { :is => 2 }
	validates :age, :numericality => { :greater_than => 17 }
	validates :gender, :presence => true #means it's checking for lenght of 1; did you enter in something
	validates :name, :uniqueness => true
	validates :email, :email => true
end 