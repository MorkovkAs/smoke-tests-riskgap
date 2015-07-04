Feature: Log in to RiskGap Website

Background:
  Given I am on the "http://riskgap.ru/" homepage
  When I click the button Войти в сервис
  Then I should see "Вам необходимо войти в систему или зарегистрироваться."

  Scenario Outline: Log in with correct (spelling) email and password

    Then I enter "<email>" into email field
    And I enter "<password>" into password field
    And I "<check>" a checkbox "Запомнить меня"
    When I click the button Войти
    Then I should see message "<result>"

    Examples:
      | email           | password     | check | result                               |
      | email@gmail.com | correct_pass | true  | Вход в систему выполнен.             |
      | email@gmail.com | correct_pass | false | Вход в систему выполнен.             |
      | email@gmail.com | 000          | true  | Неверный адрес эл. почты или пароль. |
      | email@gmail.com | 000          | false | Неверный адрес эл. почты или пароль. |
