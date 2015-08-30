#done

Feature: Log out from RiskGap Website

  Scenario Outline: Log out
    Given I am "true" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<name>"
    And I click the link "Выйти"
    Then I should see "<text>"
    Examples:
      | email                    | password | name   | text |
      | temp.test.risk@yandex.ru | 99999999 | Anton  | Вам необходимо войти в систему или зарегистрироваться. |
