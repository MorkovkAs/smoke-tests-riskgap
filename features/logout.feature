Feature: Log out from RiskGap Website

  Background:

    Given I am logged in RiskGap Website with email "temp.test.risk1@gmail.com" and password "99999999"

  Scenario: Log out
    When I click on my name
      And I click on Выйти
    Then I should see "Вам необходимо войти в систему или зарегистрироваться."
