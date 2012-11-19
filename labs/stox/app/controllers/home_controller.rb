class HomeController < ApplicationController
	def get_quotes
	end

	def pull_quotes
		@selected_stock = []

		@stock = params[:symbol].upcase
		t = params[:times].to_i
		@quotes = t.times.map{sleep 1; YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].lastTrade}
		@avg = (@quotes.inject(&:+) / t)
 		@quotes.each{|q| Stock.create(:symbol => @stock, :quote => q)} #save stocks to db
	end	

	def tally
		stocks = Stock.select(:symbol).uniq
		symbols = stocks.map{|stock| stock.symbol } #gets array of strings of the stock symbols
		@display = {} #creates empty hash to store stock symbols (as keys) with arrays of quotes (as values)
			symbols.each do |symbol| 
				@display[symbol] = Stock.where(:symbols => symbols) 
		end
	end
end
