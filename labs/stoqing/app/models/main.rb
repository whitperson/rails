class Main
	def self.quote(symbol) # class method for getting stock quote
    YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
  end

	def self.run
		puts "(e)enter a stock symbols or (q)uit?"
		response = gets.chomp
		symbol = response.upcase

			while response != 'q'
				quote = self.quote(symbol)
				Stock.create(:symbol => symbol, :quote => quote )
					
		puts "(e)enter a stock symbol or (q)uit?"
		response = gets.chomp.upcase
		end
	end
end