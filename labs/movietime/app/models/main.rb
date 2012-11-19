class Main
	def self.run
		puts "Do you want to enter a (m)ovie or (q)uit..."
		response = gets.chomp

		while response != 'q'
			puts "What's the title of your movie?"
			raw_title = gets.chomp
			m_title = raw_title.gsub(' ','+') #removes spaces
			movie_search = HTTParty.get('http://www.omdbapi.com/?t='+ m_title) #pulls data from omdb by title
			json = JSON(movie_search) #passes all data retrieved to json var
			
			actors = json['Actors'].split(', ') # splits Actors data
			genres = json['Genre'].split(', ') # splits Genre data

			year = json['Year'] # gets year
			rating = json['Rated']		#gets rating
			runtime = json['Runtime'] #gets runtime
			
			m1 = Movie.create(:title => m_title, :year => year, :rating => rating, :runtime => runtime)
			#creates movie pasing through all atributes pulled through json

			genres.each do |x| #loop for genres data
			 if Genre.where(:name => x)
          g1 = Genre.where(:name => x)
          g1.movies << m1
      	else
					g1 = Genre.create(:name => x)
					m1.genres << g1
				end
			end

			actors.each do |x| #loop for actors data 
				if Actor.where(:name => x)
	        a1 = Actor.where(:name => x)
	        a1.movies << m1	
				else	
					a1 = Actor.create(:name => x)
					m1.actors << a1
				end
			end	

		puts "Do you want to enter a (m)ovie or (q)uit..."
		response = gets.chomp
		
		end
	end
end	
