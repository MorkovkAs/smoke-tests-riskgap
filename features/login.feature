Feature: Log in to RiskGap Website

  Background:

    Given I am on the "http://riskgap.ru/" homepage
    When I click on the button Войти в сервис
    Then I should see "Вам необходимо войти в систему или зарегистрироваться."

  Scenario Outline: Log in with correct (spelling) email and password

    Then I enter "<email>" into "user_email" field
      And I enter "<password>" into "user_password" field
      And I "<check>" a checkbox "Запомнить меня"
    When I click the button "Войти"
    Then I should see "<result>"

    Examples:
      | email                     | password          | check | result                               |
      | temp.test.risk1@gmail.com | 99999999          | true  | Вход в систему выполнен.             |
      | temp.test.risk1@gmail.com | 99999999          | false | Вход в систему выполнен.             |
      | temp.test@gmail.com       | 99999999          | true  | Неверный адрес эл. почты или пароль. |
      | temp.test@gmail.com       | 99999999          | false | Неверный адрес эл. почты или пароль. |
