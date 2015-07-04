Feature: Register on RiskGap Website

  Scenario Outline: Register with incorrect (spelling) email
    Given I am on the "http://riskgap.ru/" homepage
    When I click the button Регистрация
    Then I should see "Регистрация"
    Then I enter "<my_name>" into name field
      And I enter "<company_name>" into company field
      And I enter "<email>" into email field
      And I enter "<password>" into password field
      And I enter "<password_conf>" into password confirmation field
    When I click the button "Зарегистрироваться"
    Then I should see message "<result>"
    Examples:
      | my_name | company_name | email      | password | password_conf | result                 |
      | Anton   | HSE          |            | 00000    | 00000         | Ошибки при регистрации |