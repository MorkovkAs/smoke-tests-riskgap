Feature: Test old password in RiskGap Website

  Scenario Outline: Change password, then test an old one

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<old_password>"
    Then I (Anton) change my password from "<old_password>" to "<new_password>"
    Then I (Anton) log out from the system
    Then I am "false" logged in RiskGap Website with email "<email>" and password "<old_password>"

    Examples:
      | email                    | old_password | new_password |
      | temp.test.risk@gmail.com | 99999999     | 11111111     |
      | temp.test.risk@gmail.com | 11111111     | 99999999     |