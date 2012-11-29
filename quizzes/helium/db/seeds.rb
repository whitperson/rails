Ninja.delete_all

names = []

('Aa'..'Zz').each do |letter|
  names << letter
end

500.times do |ninja|
  ninja = Ninja.create(:name => names.sample)
end 
