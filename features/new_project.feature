#done

Feature: Add project

  Scenario Outline: Create project

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    Then I should see "Название проекта"

    When I click the link "Создать проект"
    Then I should see "Описание проекта"
    Then I enter "<prj_name>" into "project_name" field
      And I enter "<prj_description>" into "project_description" field
      And I choose "<prj_type>"

    When I click the button "Создать проект"
    Then I should see "Ваш проект создан!"
    Then I click the link "Команда"
      And I should see "Члены команды"
    Then I click the button Добавить в команду
      And I should see "Пользователь добавлен"
    Then I click the link "Добавить всех"
      And I should see "Все пользователи были добавлены"

    Examples:
      | email                    | password | prj_name     | prj_description  | prj_type              |
      | temp.test.risk@yandex.ru | 99999999 | Test Project | Test Description | project_industry_id_1 |
