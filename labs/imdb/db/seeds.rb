# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create(:name => "Skyfall", :description => "latest James Bond movie", :rating => "R")
Movie.create(:name => "Goldfinger", :description => "older James Bond movie", :rating => "PG")
Movie.create(:name => "Thunderball", :description => "old James Bond movie", :rating => "R")
Movie.create(:name => "Bourne Ultimatum", :description => "not a James Bond movie", :rating => "R")
Movie.create(:name => "James Bond III", :description => "newest James Bond movie ", :rating => "R")

Director.create(:name => "Speilberg", :age => 60, :gender => "male")
Director.create(:name => "Soderbegh", :age => 50, :gender => "male")
Director.create(:name => "Lucas", :age => 62, :gender => "male")
Director.create(:name => "Coppola", :age => 30, :gender => "female")

Actor.create(:name => "Mark Hammil", :gender => "female" )
Actor.create(:name => "Harrison Ford", :gender => "female" )
Actor.create(:name => "Carry Fisher", :gender => "female" )