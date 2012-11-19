class Main
	def self.run
		puts "(a)ctor or (q)uit?"
		response = gets.chomp
			while response != 'q'
				
				puts "name ?"
				name = gets.chomp
				puts "gender ?"
				gender = gets.chomp

				Actor.create(:name => name, :gender => gender )
			
		puts "(a)ctor or (q)uit?"
		response = gets.chomp
		end
	end
end