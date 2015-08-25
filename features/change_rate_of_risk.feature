Feature: Add risk and rate it

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
    When I click the button "Сохранить"
    Then I should see "Оценки риска обновлены"
    Then I "<name>" logout from the system

    Examples:
      | name       | email                     | password | prj_name           | probability | impact | value | time |
      | AntonBase  | temp.test.risk@yandex.ru  | 99999999 | Project_Name_Anton | 4           | 4      | 2     | 1    |
      | New_User_1 | temp.test.risk1@yandex.ru | 99999999 | Project_Name_Anton | 8           | 8      | 6     | 3    |

  Scenario: Test average
    Given I am "true" logged in RiskGap Website with email "temp.test.risk@yandex.ru" and password "99999999"
    Then I click the link "Project_Name_Anton"
    When I click the link "Реестр"
    Then I should see "$4"