class HomeController < ApplicationController
	def start
	end

	def go
		@number = params[:number].to_i
	end
end	