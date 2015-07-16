Feature: Register on RiskGap Website

  Background:

    #Given I am on the "http://riskgap.ru/" homepage
    Given I am on the "http://appserver1.riskgap.com//users//sign_in" homepage
    When I click the link "Регистрация"
    Then I should see "Регистрация"

  Scenario Outline: Register

    Then I enter "<my_name>" into "user_name" field
      And I enter "<company>" into "user_company_name" field
      And I enter "<email>" into "user_email" field
      And I enter "<password>" into "user_password" field
      And I enter "<password_conf>" into "user_password_confirmation" field
    When I click the button "Зарегистрироваться"
    Then I should see "<result>"

    Examples:
      | my_name | company | email                    | password | password_conf | result                 |
      #| Anton   | HSE     |                          | 00000000 | 00000000      | Ошибки при регистрации |
      #| Anton   |         | temp.test.risk@gmail.com | 00000000 | 00000000      | Ошибки при регистрации |
      #|         | HSE     | temp.test.risk@gmail.com | 00000000 | 00000000      | Ошибки при регистрации |
      #| Anton   | HSE     | temp.test.risk@gmail.com | 00000000 | 11111111      | Ошибки при регистрации |
      #| Anton   | HSE     | temp.test.risk@gmail     | 00000000 | 00000000      | Ошибки при регистрации |
      #| Anton   | HSE     | temp.test.risk@gmail     | 00000000 | 00000000      | Ошибки при регистрации |
      #| Anton   | HSE     | temp.test.risk@gmail.com | 99999999 | 99999999      | Добро пожаловать! Вы успешно зарегистрировались. |
      | Anton   | HSE     | temp.test.risk20@mail.ru | 99999999 | 99999999      | Добро пожаловать! Вы успешно зарегистрировались. |
