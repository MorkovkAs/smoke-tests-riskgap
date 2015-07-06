Feature: Test old password in RiskGap Website

  #Background:

    #Given I am "true" logged in RiskGap Website with email "<email>" and password "<old_password>"

  Scenario Outline: Change password, then test an old one

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<old_password>"
    Then I change password from "<old_password>" to "<new_password>"
    Then I log out from the system
    Then I am "false" logged in RiskGap Website with email "<email>" and password "<old_password>"

    Examples:
      | email                     | old_password | new_password |
      | temp.test.risk1@gmail.com | 99999999     | 11111111     |
      | temp.test.risk1@gmail.com | 11111111     | 99999999     |