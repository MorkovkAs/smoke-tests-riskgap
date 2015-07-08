Given(/^I am on the "([^"]*)" homepage$/) do |page_to|
  visit page_to
end

When(/^I click the link "([^"]*)"/) do |button|
  click_link(button, match: :first, :visible => true)
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

When(/^I click the button "([^"]*)"/) do |button|
  click_button(button, match: :first, :visible => true)
end

Then(/^I wait for (\d+) seconds$/) do |n|
  sleep(n.to_i)
end