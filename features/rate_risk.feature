Feature: Add risk and rate it

  Scenario: Create risk:
    Given I ("temp.test.risk@gmail.com", "99999999") have logged in and created a risk "risk_for_rate" with category "Category_for_rate" for "Project_Name_Anton"

  Scenario Outline: Rate risk branch

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
    When I click the link "Оценка"
    Then I should see "Влияние в USD"
      And I choose Вероятность as <probability>
      And I choose Влияние as <impact>
      And I enter "<value>" into "risk_estimate_impact_value" field
      And I enter "<time>" into "risk_estimate_impact_time" field
    When I click the button "Отправить оценку"
    Then I should see "Оценки риска обновлены"
    Then I "<name>" logout from the system

    Examples:
      | name  | email                    | password | prj_name           | probability | impact | value | time |
      | Anton | temp.test.risk@gmail.com | 99999999 | Project_Name_Anton | 8           | 8      | 100   | 10   |
      | Anton | temp.test.risk20@mail.ru | 99999999 | Project_Name_Anton | 2           | 2      | 4     | 2    |

  Scenario: Test average
    Given I am "true" logged in RiskGap Website with email "temp.test.risk@gmail.com" and password "99999999"
    Then I click the link "Project_Name_Anton"
    When I click the link "Реестр"
    Then I should see "$52"