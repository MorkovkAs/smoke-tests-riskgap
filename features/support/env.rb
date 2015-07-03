require 'capybara/cucumber'
Capybara.default_driver = :selenium

Capybara.configure do |config|
  config.match = :smart
  config.exact = false
end