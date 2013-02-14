class SchoolMailer < ActionMailer::Base

config.action_mailer.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'], 
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'floating-meadow-8628.heroku.com',
  :authentication => :plain,
}
config.action_mailer.delivery_method = :smtp
config.action_mailer.perform_deliveries = true
end
