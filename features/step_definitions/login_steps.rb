Given(/^I am on the "([^"]*)" homepage$/) do |page_to|
  visit page_to
end

Then(/^I enter "([^"]*)" into email field$/) do |email|
  fill_in('user_email', :with => email)
end

Then(/^I enter "([^"]*)" into password field$/) do |password|
  fill_in('user_password', :with => password)
end

Then(/^I click the button "([^"]*)"$/) do |button|
  first(:link, button).click
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end

Then(/^I wait for (\d+) seconds$/) do |n|
  sleep(n.to_i)
end