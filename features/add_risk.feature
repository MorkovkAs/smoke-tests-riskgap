#done

Feature: Add risk

  Scenario Outline: Add risk

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
      And I enter "<risk_title>" into "risk_title" field
      And I enter "<risk_descr>" into "risk_description" field
      And I enter "<risk_cat>" into category
    When I click the button "Добавить"
    Then I should see "<risk_title>"

    Examples:
      | email                    | password | prj_name     | risk_title       | risk_descr       | risk_cat   |
      | temp.test.risk@yandex.ru | 99999999 | Test Project | add_risk.feature | add_risk.feature | Category_1 |
