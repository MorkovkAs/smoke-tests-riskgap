Feature: Person will do this task

  Scenario Outline: Person will do this task

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<prj_name>"
    Then I should see "Идентификация"
    When I click the link "Задачи"
    Then I should see "<task_name>"
    Then I click the link "<task_name>"
    Then I choose person №<number> to assign
    Then I enter "Comment_initial" into "task_comment_text" field
    Then I click the button "Сохранить изменения"
    Then I should see "Изменения в задаче сохранены"

    Examples:

      | email                    | password | prj_name           | number | task_name  |
      | temp.test.risk@gmail.com | 99999999 | Project_Name_Anton | 2      | : New_Task |
      | temp.test.risk@gmail.com | 99999999 | Project_Name_Anton | 1      | : New_Task |
