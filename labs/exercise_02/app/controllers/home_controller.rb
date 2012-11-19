class HomeController < ApplicationController
	def start
	end

	def end
		@name = params[:name]
	end
end