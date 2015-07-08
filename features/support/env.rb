require 'rspec'
require 'capybara/cucumber'
require 'capybara/rspec'
#require 'action_mailer'
#require 'mail'

Capybara.default_driver = :selenium
Capybara.ignore_hidden_elements = false

#config.action_mailer.default_url_options = {host: 'www.example.com'}

Capybara.configure do |config|
  config.match = :smart
  config.exact = false
end

#Mail.defaults do
#  delivery_method :test
#end