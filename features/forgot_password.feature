Feature: Create new password to RiskGap Website

  Scenario Outline: Get mail with new password

    Given I am on the "http://riskgap.ru/" homepage
    When I click the link "Войти в сервис"
    Then I should see "Вам необходимо войти в систему или зарегистрироваться."
    When I click the link "Забыли пароль?"
    Then I should see "Забыли пароль?"
    Then I enter "<email>" into "user_email" field
    When I click the button "Отправить мне инструкции по сбросу пароля"
    Then I should see "<text>"

    Examples:
      | email                    | text                  |
      | blablabla@gmail.com      | сохранение не удалось |
      | temp.test.risk@gmail.com | В течение нескольких минут вы получите письмо с инструкциями по восстановлению пароля. |

  #Scenario: Quick Test of Gmail

    #Given I login to Gmail with username "temp.test.risk@gmail.com" and password "temprisk"
      #And I open message with subject "Инструкции по восстановлению пароля"
      #And I should see in email message "Кто-то запросил смену пароля на Вашей учетной записи"
      ###And I follow verification link in email message for email "temp.test.risk@gmail.com"
    #Then I should see "Установить пароль"
      #And I enter "<password>" into "user_password" field
      #And I enter "<password_conf>" into "user_password_confirmation" field
    #When I click the button "Установить пароль"
    #Then I should see "Парол"
    #Then I wait for 2 seconds
    ###Then I clear my inbox
