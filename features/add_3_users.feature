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
