#done

Feature: Test old password in RiskGap Website

  Scenario Outline: Change password, then test an old one

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<old_password>"
    Then I (<name>) change my password from "<old_password>" to "<new_password>"
    Then I (<name>) log out from the system
    Then I am "false" logged in RiskGap Website with email "<email>" and password "<old_password>"

    Examples:
      | name  | email                    | old_password | new_password |
      | Anton | temp.test.risk@yandex.ru | 99999999     | 11111111     |
      | Anton | temp.test.risk@yandex.ru | 11111111     | 99999999     |