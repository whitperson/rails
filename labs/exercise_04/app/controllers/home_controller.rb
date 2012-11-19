class HomeController < ApplicationController
	def stock
	end

	def resultpage
	end

	def results
		symbols = params[:stocks].upcase.split(', ')
		@stocks = symbols.map{|symbol| YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade }
	end
end


