Given(/^I am on the "([^"]*)" homepage$/) do |page_to|
  visit page_to
end

Then(/^I enter "([^"]*)" into email field$/) do |email|
  fill_in('user_email', :with => email)
end

Then(/^I enter "([^"]*)" into password field$/) do |password|
  fill_in('user_password', :with => password)
end

Then(/^I click the botton login$/) do
  button = '//*[@id="new_user"]/div[5]/div/input'
  find(:xpath, button).click
end