class NotifierMailer < ApplicationMailer
  default from: ENV.fetch('FROM_EMAIL_ADDRESS')
  
  def price_alert(rate, holdings)
    @rate = rate
    @holdings = holdings
    @account = ENV.fetch('ALERT_EMAIL_ADDRESS')
    mail(to: ENV.fetch('ALERT_EMAIL_ADDRESS'))
  end 
end
