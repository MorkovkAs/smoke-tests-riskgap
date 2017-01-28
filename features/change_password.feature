#done

Feature: Change password to RiskGap Website

  Scenario Outline: Change password

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<name>"
      And I click the link "Учетная запись"
    Then I should see "Изменить пароль"
    Then I enter "<password>" into "user_current_password" field
      And I enter "<new_password>" into "user_password" field
      And I enter "<new_password>" into "user_password_confirmation" field
    When I click the button "Изменить пароль"
    Then I should see "<result>"

    Examples:
      | name      | email                    | password | new_password | result                       |
      | AntonBase | temp.test.risk@yandex.ru | 99999999 | 11111111     | Ваша учетная запись изменена |
      | AntonBase | temp.test.risk@yandex.ru | 11111111 | 99999999     | Ваша учетная запись изменена |
