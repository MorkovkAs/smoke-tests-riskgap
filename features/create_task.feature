Feature: Add risk and task for it

  Scenario Outline: Creat risk and task:

    Given I ("<email>", "<password>") have logged in and created a risk "<risk_name>" with category "Category_for_task" for "<prj_name>"
    Then I click the link "<risk_name>"
    When I click on Задачи
    Then I should see "Состояние задачи"
    Then I enter "New_Task" into "task_title" field
    When I click the button "Добавить"
    Then I should see ": New_Task"

    Examples:

      | email                    | password | prj_name           | risk_name     |
      | temp.test.risk@gmail.com | 99999999 | Project_Name_Anton | risk_for_task |
