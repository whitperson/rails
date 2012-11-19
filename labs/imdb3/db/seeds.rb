Movie.delete_all
Actor.delete_all
Studio.delete_all
Director.delete_all


m1 = Movie.create(:name  => "Traffic")
m2 = Movie.create(:name  => "Star Wars")
m3 = Movie.create(:name  => "Apocolypse Now")
m4 = Movie.create(:name  => "Blow")
m5 = Movie.create(:mname => "Empire Strikes Back")

a1 = Actor.create(:name  => "Michael Douglas")
a2 = Actor.create(:name  => "Catherine Zeta Jones")
a3 = Actor.create(:name  => "Harrison Ford")
a4 = Actor.create(:name  => "Carrie Fisher")
a5 = Actor.create(:name  => "Johnny Depp")

s1 = Studio.create(:name  => "Universal")
s2 = Studio.create(:name  => "Warner Bros")
s3 = Studio.create(:name  => "Lionsgate")
s4 = Studio.create(:name  => "Sony")


d1 = Director.create(:name => "Stephen Soderbergh" )
d2 = Director.create(:name => "George Lucas" )
d3 = Director.create(:name => "Francis Ford Coppola" )
d4 = Director.create(:name => "Ted Denny" )

d1.movies << m1
d4.movies << m4
d2.movies = [m2, m5]

m1.actors = [ ] 

