# Preview all emails at http://localhost:3000/rails/mailers/notifier
class NotifierPreview < ActionMailer::Preview
  def price_alert
    NotifierMailer.price_alert(1004.675, 60540*14.675)
  end
end
