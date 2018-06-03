class PriceAlertJob < ApplicationJob
  queue_as :default
 
  def perform()
    quote = RemoteQuote.get_quote
    # Need to calculate & add in holdings_value once ENV variable is set 
    puts quote
    quote_record = Quote.create(symbol: quote[:asset_id_base], price: quote[:rate]*100, holdings_value: 0)
    
    if quote[:rate] >= 2
      puts 'quote is greater than 2'
      #logic for whether to send an email
    else 
      puts 'quote is lower than 2'
    end
  end
end
