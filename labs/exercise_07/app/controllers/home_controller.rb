class HomeController < ApplicationController
	def stocks
	end

	def results
		@selected_stock = []
		@stock = params[:symbol].upcase
		t = params[:times].to_i
				t.times do |stock|
				@selected_stock << YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].lastTrade
				sleep 5
			end
		@average = (@selected_stock.inject(&:+) / t)
	end
end