Then(/^I choose Вероятность as (\d+)$/) do |probability|
  find(:xpath, '//*[@id="probability-slider"]/div[' + probability + ']').click
end

Then(/^I choose Влияние as (\d+)$/) do |impact|
  find(:xpath, '//*[@id="impact-slider"]/div[' + impact + ']').click
end

Then(/^I "([^"]*)" logout from the system$/) do |name|
  step 'I click the link "' + name + '"'
  step 'I click the link "Выйти"'
  step 'I should see "Вам необходимо войти в систему или зарегистрироваться."'
end