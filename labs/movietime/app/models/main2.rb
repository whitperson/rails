
class Main2
	def self.run
		puts "Do you want to enter a (m)ovie or (q)uit..."
		response = gets.chomp

		while response != 'q'
			puts "What are the titles of your movie?"
			titles = gets.chomp
			split_titles = titles.split(', ') 	
				split_titles.each do |movie| 
					#movie = split_titles.gsub(' ','+')
				 	movie_search = HTTParty.get('http://www.omdbapi.com/?t='+ movie) 
				 	json = JSON(movie_search) 
			
					poster = json['Poster'] 
					title = json['Title'] 
					year = json['Year'] 
					rating = json['Rated']	
					released = json['Released'] 
					runtime = json['Runtime'] 
					genres = json['Genre'].split(', ') 
					actors = json['Actors'].split(', ') 
					directors = json['Director'].split(', ') 
			end

			binding.pry
			
			m1 = Movie.create(:title => title, :year => year, :rating => rating, :runtime => runtime)
			#creates movie pasing through all atributes pulled through json
		end

		puts "Do you want to enter a (m)ovie or (q)uit..."
		response = gets.chomp
		
		
	end
end	

