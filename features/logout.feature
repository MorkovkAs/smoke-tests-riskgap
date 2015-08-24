Feature: Log out from RiskGap Website

  Scenario Outline: Log out
    Given I am "<successfully>" logged in RiskGap Website with email "<email>" and password "<password>"
    When I click the link "<button>"
    And I click the link "Выйти"
    Then I should see "<text>"
    Examples:
      | successfully | email                    | password | button    | text                                                   |
      | true         | temp.test.risk@yandex.ru | 99999999 | AntonBase | Вам необходимо войти в систему или зарегистрироваться. |
