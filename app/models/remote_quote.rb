class RemoteQuote
  include HTTParty

  base_uri 'https://rest.coinapi.io/v1'
  headers 'X-CoinAPI-Key' => ENV.fetch('COIN_API_KEY') 

  def self.get_quote
    response = get_quote_raw
    return nil unless response.ok?
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.get_quote_raw
    get('/exchangerate/REQ/USD')
  end
end
