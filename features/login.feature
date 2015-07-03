Feature: Log in to RiskGap Website

  Scenario: Log in successful

    Given I am on the "http://riskgap.ru/" homepage
    When I click the button "Войти в сервис"
    Then I should see "Вам необходимо войти в систему или зарегистрироваться."
    When I enter "mail@gmail.com" into email field
    And I enter "0000" into password field
    And I click the button "Войти"
    Then I wait for 5 seconds
    Then I should see "Вход в систему выполнен."