Given(/^I am on the "([^"]*)" homepage$/) do |page_to|
  visit page_to
end

When(/^I click on the button Войти в сервис$/) do
  button = '/html/body/div[1]/header/div[1]/div/div/nav/div/ul/li[5]/a/span[2]'
  find(:xpath, button).click
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end

Then(/^I enter "([^"]*)" into "([^"]*)" field$/) do |something, where|
  fill_in(where, :with => something)
end

And(/^I "([^"]*)" a checkbox "([^"]*)"$/) do |check, name|
  if(check == "true")
    page.check(name, visible: false)
  else
    page.uncheck(name, visible: false)
  end
end

Then(/^I wait for (\d+) seconds$/) do |n|
  sleep(n.to_i)
end