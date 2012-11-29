# == Schema Information
#
# Table name: names
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Name < ActiveRecord::Base
  attr_accessible :name
end
