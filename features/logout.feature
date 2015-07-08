Feature: Log out from RiskGap Website

  Background:

    Given I am "true" logged in RiskGap Website with email "temp.test.risk5@gmail.com" and password "99999999"

  Scenario: Log out

    When I click the link "Anton"
      And I click the link "Выйти"
    Then I should see "Вам необходимо войти в систему или зарегистрироваться."
