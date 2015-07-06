When(/^I click on the button Регистрация$/) do
  find(:xpath, '/html/body/div[1]/header/div[1]/div/div/nav/div/ul/li[6]/a/span[2]').click
end

When(/^I click the button "([^"]*)"/) do |button|
  click_button(button)
end