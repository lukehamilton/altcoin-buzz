# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
CryptoBuzz::Application.initialize!

# Configure ActionMailer to use SengGrid
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'cryptobuzz.io',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
