Feature: Search for project

  Scenario Outline: See project

    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    Then I should see "<prj_name>"

    Examples:
      | email                    | password | prj_name           |
      | temp.test.risk21@mail.ru | 99999999 | Project_Name_Anton |