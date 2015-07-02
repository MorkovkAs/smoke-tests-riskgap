Feature: Log in to RiskGap Website

  Scenario: Log in unsuccessfull

    Given I am on the "https://riskgap-ru.herokuapp.com" homepage
    Then I enter "email@gmail.com" into email field
    Then I enter "0000" into password field
    Then I click the botton login