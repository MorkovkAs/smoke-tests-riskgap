#done

Feature: Add risk from template

  Scenario Outline: Add risk from template

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
    When I click the link "Шаблоны"
    Then I should see "Описание риска"
    Then I select template "<template_name>" from list
    Then I wait for 2 seconds
    Then I click the right option Добавить №<number>
    Then I should see "<result>"

    Examples:
      | email                    | password | prj_name     | number | result        | template_name |
      | temp.test.risk@yandex.ru | 99999999 | Test Project | 1      | Риск добавлен | Проект разработки программного обеспечения |
