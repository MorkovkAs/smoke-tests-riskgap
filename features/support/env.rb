require 'rspec'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'mail'

Capybara.default_driver = :selenium
Capybara.ignore_hidden_elements = false

Capybara.configure do |config|
  config.match = :smart
  config.exact = false
end

Mail.defaults do
  retriever_method :pop3, :address => "pop.yandex.ru",
                   :port => 995,
                   :user_name => 'temp.test.risk@yandex.ru',
                   :password => 'temprisk',
                   :enable_ssl => true
end