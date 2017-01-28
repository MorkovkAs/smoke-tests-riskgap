Then(/^I \(([^"]*)\) change my password from "([^"]*)" to "([^"]*)"$/) do |name, old_password, new_password|
  step 'I click the link "' + name +'"'
  step 'I click the link "Учетная запись"'
  step 'I should see "Изменить пароль"'
  step 'I enter "' + old_password +'" into "user_current_password" field'
  step 'I enter "' + new_password +'" into "user_password" field'
  step 'I enter "' + new_password +'" into "user_password_confirmation" field'
  step 'I click the button "Изменить пароль"'
  step 'I should see "Ваша учетная запись изменена."'
end

Then(/^I \(([^"]*)\) log out from the system$/) do |name|
  step 'I click the link "' + name +'"'
  step 'I click the link "Выйти"'
  step 'I should see "Вам необходимо войти в систему или зарегистрироваться."'
end