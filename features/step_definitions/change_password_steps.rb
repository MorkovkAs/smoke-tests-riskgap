Given(/^I am logged in RiskGap Website with email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  step 'I am on the "http://riskgap-ru.herokuapp.com/" homepage'
  step 'I should see "Вам необходимо войти в систему или зарегистрироваться."'
  step 'I enter "' + email + '" into "user_email" field'
  step 'I enter "' + password + '" into "user_password" field'
  step 'I click the button "Войти"'
  step 'I should see message "Вход в систему выполнен."'
end

When(/^I click on my name$/) do
  find(:xpath, '/html/body/div[1]/nav/div[2]/ul[2]/li[3]/a/span[2]').click
  find(:xpath, '/html/body/div[1]/nav/div[2]/ul[2]/li[3]/ul/li[1]/a').click
end

