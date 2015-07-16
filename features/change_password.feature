Feature: Change password to RiskGap Website

  Scenario Outline: Change password

    Given I am "true" logged in RiskGap Website with email "temp.test.risk@gmail.com" and password "<password>"
    When I click the link "Anton"
      And I click the link "Профайл"
    Then I should see "Установить пароль"
    Then I enter "<password>" into "user_current_password" field
      And I enter "<new_password>" into "user_password" field
      And I enter "<new_password_conf>" into "user_password_confirmation" field
    When I click the button "Установить пароль"
    Then I should see "<result>"

    Examples:
      | password | new_password | new_password_conf | result                        |
      | 99999999 | 11111111     | 11111111          | Ваша учетная запись изменена. |
      | 11111111 | 99999999     | 99999999          | Ваша учетная запись изменена. |
      | 99999999 | 11111111     | 22222222          | Ошибки при сохранении         |
