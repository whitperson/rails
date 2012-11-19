# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  quote      :string(255)
#  avg        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
	
end
