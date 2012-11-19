Apartment.delete_all
Tenant.delete_all
Pet.delete_all

a1 = Apartment.create(:name => "cobble hill 3br", :rooms => 3, :rent => "3_000")
a2 = Apartment.create(:name => "park slope 2br", :rooms => 2, :rent => "2_500")
a3 = Apartment.create(:name => "ft greene 1br", :rooms => 1, :rent => "1_900")

t1 = Tenant.create(:name => "Matt", :age => 30, :gender => "male")
t2 = Tenant.create(:name => "Marc", :age => 30, :gender => "male")
t3 = Tenant.create(:name => "Joline", :age => 25, :gender => "female")
t4 = Tenant.create(:name => "Jill", :age => 35, :gender => "female")
t5 = Tenant.create(:name => "Molly", :age => 32, :gender => "fmale")
t6 = Tenant.create(:name => "Morgan", :age => 28, :gender => "male")

p1 = Pet.create(:name => "Dale", :age => 10, :species => "turtle")
p2 = Pet.create(:name => "Dave", :age => 13, :species => "monkey")
p3 = Pet.create(:name => "Darnell", :age => 3, :species => "snake")
p4 = Pet.create(:name => "Don", :age => 4, :species => "hamster")
p5 = Pet.create(:name => "Donna", :age => 1, :species => "goldfish")

a1.tenants = [t1, t2]
a2.tenants = [t3, t4, t5]
a3.tenants << t6

t1.pets = [p1, p2]
t4.pets << p5
t6.pets = [p3, p4]
