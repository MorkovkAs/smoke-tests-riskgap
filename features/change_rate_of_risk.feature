#done

Feature: Add risk and rate it

  Scenario Outline: Create risk for testing change_rate_of_risk.feature

    Given I ("<email>", "<password>") have logged in and created a risk "change_rate_of_risk.feature" with category "Category_for_task" for "<prj_name>"

  Examples:
    | email                    | password | prj_name     |
    | temp.test.risk@yandex.ru | 99999999 | Test Project |


  Scenario Outline: Rate risk branch

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
    Then I click the link "Оценка"
    Then I click the link "<risk_name>"
    Then I should see "Влияние в USD"
    And I choose Вероятность as <probability>
    And I choose Влияние as <impact>
    And I enter "<value>" into "risk_estimate_impact_value" field
    And I enter "<time>" into "risk_estimate_impact_time" field
    When I click the button "Сохранить"
    Then I should see "Оценки риска обновлены"
    Then I "<name>" logout from the system

    Examples:
      | name   | email                     | password | prj_name     | probability | impact | value | time | risk_name |
      | Anton  | temp.test.risk@yandex.ru  | 99999999 | Test Project | 4           | 4      | 2     | 1    | change_rate_of_risk.feature |
      | User_1 | temp.test.risk1@yandex.ru | 99999999 | Test Project | 8           | 8      | 6     | 3    | change_rate_of_risk.feature |


  Scenario Outline: Test average
    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    Then I click the link "<prj_name>"
    When I click the link "Реестр"
    Then I should see "$4"

  Examples:
    | email                    | password | prj_name     |
    | temp.test.risk@yandex.ru | 99999999 | Test Project |
