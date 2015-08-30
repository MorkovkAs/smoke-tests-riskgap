#done

Feature: Person will do this task

  Scenario Outline: Person will do this task
    Given I ("<email>", "<password>") have logged in and created a risk "<risk_name>" with category "Category_for_task" and task "<task_name>" for "<prj_name>"
    Then I click the link "<task_name>"
    Then I choose person №<number> to assign
    Then I enter "№<number>" into "task_comment_text" field
    Then I click the button "Сохранить изменения"
    Then I should see "Изменения в задаче сохранены"

    Examples:

      | email                    | password | prj_name     | number | risk_name               | task_name            |
      | temp.test.risk@yandex.ru | 99999999 | Test Project | 2      | task_for_person.feature | task_for_person_test |

  #Scenario Outline: Email about new task
  #  Given "<email>" should receive an email with "<subject>" as the subject
  #  Then I wait for 30 seconds
  #
  #  Examples:
  #    | email                     | password | user_name  | subject               |
  #    | temp.test.risk2@yandex.ru | 99999999 | New_User_1 | Приглашение в RiskGap |
