Feature: Add risk from template

  Scenario Outline: Add risk from template

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
    When I click the link "Импортировать"
    Then I should see "Описание риска"
    Then I select template "<template_name>" from list
    Then I wait for 2 seconds
    Then I click the right option Добавить №<number>
    Then I should see "Риск добавлен"

    Examples:
      | email                     | password | prj_name           | number | template_name |
      | temp.test.risk5@gmail.com | 99999999 | Project_Name_Anton | 1      |Проект разработки программного обеспечения |
      | temp.test.risk5@gmail.com | 99999999 | Project_Name_Anton | 2      |Проект разработки программного обеспечения |
