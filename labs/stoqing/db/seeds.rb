# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:name => "luke", :password => "hello123" )
User.create(:name => "han", :password => "crappypw" )
User.create(:name => "chewy", :password => "pleasehackme" )
User.create(:name => "vader", :password => "isuck" )
User.create(:name => "leia", :password => "bitchassho" )

