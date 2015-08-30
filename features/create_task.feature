#done

Feature: Add risk and task for it

  Scenario Outline: Creat risk and task:

    Given I ("<email>", "<password>") have logged in and created a risk "<risk_name>" with category "Category_for_task" for "<prj_name>"
    Then I click the link "<risk_name>"
    When I click on Задачи
    Then I should see "Здоровье задачи"
    Then I enter "create_task" into "task_title" field
    When I click the button "Добавить"
    Then I should see "create_task"

    Examples:

      | email                    | password | prj_name     | risk_name           |
      | temp.test.risk@yandex.ru | 99999999 | Test Project | create_task.feature |
