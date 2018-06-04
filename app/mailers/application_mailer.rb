class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch('FROM_EMAIL_ADDRESS')
  layout 'mailer'
end
