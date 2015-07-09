require 'rspec'
require 'capybara/cucumber'
require 'capybara/rspec'

Capybara.default_driver = :selenium
Capybara.ignore_hidden_elements = false

Capybara.configure do |config|
  config.match = :smart
  config.exact = false
end