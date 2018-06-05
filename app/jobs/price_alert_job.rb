class PriceAlertJob < ApplicationJob
  queue_as :default
 
  def perform()
    quote = RemoteQuote.get_quote
    rate = quote[:rate]*100
    holdings = ENV.fetch('HOLDINGS').to_i*rate
    quote_record = Quote.create(symbol: quote[:asset_id_base], price: rate, holdings_value: holdings)
     
    if rate >= ENV.fetch('TARGET_PRICE').to_i
      NotifierMailer.price_alert(rate, holdings).deliver!
    else 
      puts "Current rate is #{rate} cents, total holdings #{holdings} cents"
    end
  end
end
