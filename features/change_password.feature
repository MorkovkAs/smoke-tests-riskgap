Feature: Change password to RiskGap Website

  Background:

    Given I am logged in RiskGap Website with email "temp.test.risk1@gmail.com" and password "99999999"

  Scenario Outline: Change password
    When I click on my name
    Then I should see message "Установить пароль"
    Then I enter "<password>" into "user_current_password" field
    And I enter "<new_password>" into "user_password" field
    And I enter "<new_password_conf>" into "user_password_confirmation" field
    When I click the button "Установить пароль"
    Then I should see message "<result>"
    Examples:
      | password | new_password | new_password_conf | result                        |
      | 99999999 | 99999999     | 99999999          | Ваша учетная запись изменена. |
      | 11111111 | 99999999     | 99999999          | Ошибки при сохранении         |
      | 99999999 | 11111111     | 22222222          | Ошибки при сохранении         |
