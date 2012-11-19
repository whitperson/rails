class PersonValidator < ActiveModel::Validator
  def validate(record) #evaluates entire person object of 'record'
  	if (record.state != "NY") && (record.age < 18)
  		record.errors[:base] << "Must be from NY state and be 18 years old"
  		#if referencing the entire object and all attributes, use :base
  		#this is a group validation
  	end
  end
end
