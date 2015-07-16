Feature: Filter risk

  Scenario Outline: Filter risks by category

    Given I ("<email>", "<password>") have logged in and created a risk "<risk_name>" with category "<risk_cat>" for "<prj_name>"
    Then I should see "Реестр"
    When I click the link "Реестр"
    Then I should see "Здоровье риска"
    When I click the link "<risk_cat>"
    Then I should see "<risk_name>"

    Examples:
      | email                    | password | prj_name           | risk_cat   | risk_name   |
      | temp.test.risk@gmail.com | 99999999 | Project_Name_Anton | Category_1 | temp_name_1 |
      | temp.test.risk@gmail.com | 99999999 | Project_Name_Anton | Category_2 | temp_name_2 |
