#done

Feature: Log in to RiskGap Website

  Background:

    Given I am on the "http://riskgap.ru/" homepage
    When I click the link "ВОЙТИ В СЕРВИС"
    Then I wait for 3 seconds
    Then I should see "Вам необходимо войти в систему или зарегистрироваться."

  Scenario Outline: Log in with correct (spelling) email and password

    Then I enter "<email>" into "user_email" field
      And I enter "<password>" into "user_password" field
      And I "<check>" a checkbox "Запомнить меня"
    When I click the button "Войти"
    Then I should see "<result>"

    Examples:
      | email                    | password | check | result                   |
      | temp.test.risk@yandex.ru | 99999999 | true  | Вход в систему выполнен. |
