#done

Feature: Add 3 users

  Scenario Outline: Add user

    Given I am "true" logged in RiskGap Website with email "<my_email>" and password "<password>"
    When I click the link "Компания"
    Then I should see "Информация о компании"
    Then I click the link "Пользователи"
    Then I should see "Статус"

    Then I enter "<email1>" into "user_email" field
    When I click the button "Пригласить"
    Then I wait for 2 seconds
    Then I should see "<result>"

    Then I enter "<email2>" into "user_email" field
    When I click the button "Пригласить"
    Then I should see "<result>"

    Then I enter "<email3>" into "user_email" field
    When I click the button "Пригласить"
    Then I should see "<result>"


    Examples:
      | my_email                 | password | email1                    | email2                    | email3                    | result             |
      | temp.test.risk@yandex.ru | 99999999 | temp.test.risk1@yandex.ru | temp.test.risk2@yandex.ru | temp.test.risk3@yandex.ru | Invitation sent to |


  Scenario Outline: Register invited user

    Given "<email>" should receive an email with "<subject>" as the subject
    Then I should see "Установить пароль"
    And I should see "Ваше имя"
    Then I enter "<user_name>" into "user_name" field
    Then I enter "<password>" into "user_password" field
    Then I enter "<password>" into "user_password_confirmation" field
    When I click the button "Установить пароль"
    Then I should see "<result>"

    Examples:
      | email                     | password | user_name | subject               | result |
      | temp.test.risk1@yandex.ru | 99999999 | User_1    | Приглашение в RiskGap | Ваш пароль установлен! Вы можете войти в систему. |
      | temp.test.risk2@yandex.ru | 99999999 | User_2    | Приглашение в RiskGap | Ваш пароль установлен! Вы можете войти в систему. |
      | temp.test.risk3@yandex.ru | 99999999 | User_3    | Приглашение в RiskGap | Ваш пароль установлен! Вы можете войти в систему. |
