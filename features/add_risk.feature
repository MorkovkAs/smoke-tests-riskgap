Feature: Add 3 users

  Scenario Outline: Add user

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
      And I enter "<risk_title>" into "risk_title" field
      And I enter "<risk_descr>" into "risk_description" field
      And I enter "<risk_cat>" into category
    When I click the button "Добавить"
    Then I should see "<risk_title>"

    Examples:
      | email                     | password | prj_name           | risk_title    | risk_descr | risk_cat   |
      | temp.test.risk5@gmail.com | 99999999 | Project_Name_Anton | My_new_risk_1 | test_1     | Category_1 |
      | temp.test.risk5@gmail.com | 99999999 | Project_Name_Anton | My_new_risk_2 | test_2     | Category_2 |
