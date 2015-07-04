When(/^I click the button Регистрация$/) do
  find(:xpath, '/html/body/div[1]/header/div[1]/div/div/nav/div/ul/li[6]/a/span[2]').click
end

When(/^I click the button "([^"]*)"/) do |button|
  click_button(button)
end

Then(/^I enter "([^"]*)" into name field$/) do |my_name|
  fill_in('user_name', :with => my_name)
end

And(/^I enter "([^"]*)" into company field$/) do |company_name|
  fill_in('user_company_name', :with => company_name)
end

And(/^I enter "([^"]*)" into password confirmation field$/) do |password_conf|
  fill_in('user_password_confirmation', :with => password_conf)
end