Given(/^I am on the "([^"]*)" homepage$/) do |page_to|
  visit page_to
end

When(/^I click the button Войти в сервис$/) do
  button = '/html/body/div[1]/header/div[1]/div/div/nav/div/ul/li[5]/a/span[2]'
  find(:xpath, button).click
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end

Then(/^I enter "([^"]*)" into email field$/) do |email|
  fill_in('user_email', :with => email)
end

Then(/^I enter "([^"]*)" into password field$/) do |password|
  fill_in('user_password', :with => password)
end

And(/^I "([^"]*)" a checkbox "([^"]*)"$/) do |check, name|
  if(check)
    page.check(name, visible: false)
  else
    page.uncheck(name, visible: false)
  end
end

Then(/^I click the button Войти$/) do
  button = '//*[@id="new_user"]/div[5]/div/input'
  find(:xpath, button).click
end

Then(/^I should see message "([^"]*)"$/) do |result|
  expect(page).to have_text(result)
end

Then(/^I wait for (\d+) seconds$/) do |n|
  sleep(n.to_i)
end