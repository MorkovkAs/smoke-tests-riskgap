#done

Feature: Filter risk

  Scenario Outline: Filter risks by category

    Given I ("<email>", "<password>") have logged in and created a risk "<risk_name>" with category "<risk_cat>" for "<prj_name>"
    Then I should see "Реестр"
    When I click the link "Реестр"
    Then I should see "Здоровье риска"
    When I click the button "Категории"
    When I click the link "<risk_cat>"
    Then I should see "<risk_name>"

    Examples:
      | email                    | password | prj_name     | risk_cat   | risk_name           |
      | temp.test.risk@yandex.ru | 99999999 | Test Project | Category_1 | filter_risk.feature |
