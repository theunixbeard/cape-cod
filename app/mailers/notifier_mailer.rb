class NotifierMailer < ApplicationMailer
  include QuotesHelper
  helper :quotes

  def price_alert(rate, holdings)
    @rate = rate
    @holdings = holdings
    @account = ENV.fetch('ALERT_EMAIL_ADDRESS')
    mail(to: ENV.fetch('ALERT_EMAIL_ADDRESS'))
  end 
end
