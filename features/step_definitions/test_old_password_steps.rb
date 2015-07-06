Then(/^I change password from "([^"]*)" to "([^"]*)"$/) do |old_password, new_password|
  step 'I click on my name'
  step 'I click on Профайл'
  step 'I should see "Установить пароль"'
  step 'I enter "' + old_password +'" into "user_current_password" field'
  step 'I enter "' + new_password +'" into "user_password" field'
  step 'I enter "' + new_password +'" into "user_password_confirmation" field'
  step 'I click the button "Установить пароль"'
  step 'I should see "Ваша учетная запись изменена."'
end

Then(/^I log out from the system$/) do
  step 'I click on my name'
  step 'I click on Выйти'
  step 'I should see "Вам необходимо войти в систему или зарегистрироваться."'
end