#done

Feature: Add risk from recommendation

  Scenario Outline: Add risk from recommendation

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
    When I click the link "Рекомендации"
    Then I should see "Выберите категории релевантные вашему проекту"
    Then I enter "<template_name>"
    When I click the button "Сохранить"
    Then I wait for 2 seconds
    Then I should see "Название риска"
    Then I click the right option Добавить №<number>
    Then I should see "<result>"

    Examples:
      | email                    | password | prj_name     | number | result        | template_name |
      | temp.test.risk@yandex.ru | 99999999 | Test Project | 1      | Риск добавлен | Разработка программного обеспечения |
