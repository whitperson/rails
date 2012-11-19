class HomeController < ApplicationController
	def movies
	end

	def results
		titles = params[:titles].split(', ') 
		@movies = titles.map{|title| JSON(HTTParty.get("http://www.omdbapi.com/?t=#{title.gsub(' ','+')}"))}
	end 
end