class QuotesController < ApplicationController
  def index
    quote = RemoteQuote.get_quote
    @rate = quote[:rate]
    @symbol = quote[:asset_id_base]
    @holdingsValue = ENV.fetch('HOLDINGS').to_i * quote[:rate]
    @holdings = ENV.fetch('HOLDINGS').to_i * quote[:rate]
  end
end
