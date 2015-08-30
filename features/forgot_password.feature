#done

Feature: Create new password to RiskGap Website

  Scenario Outline: Get mail with new password

    Given I am on the "http://riskgap.ru/" homepage
    When I click the link "Войти в сервис"
    Then I should see "Вам необходимо войти в систему или зарегистрироваться."
    When I click the link "Забыли пароль?"
    Then I should see "Забыли пароль?"
    Then I enter "<email>" into "user_email" field
    When I click the button "Отправить мне инструкции по сбросу пароля"
    Then I should see "<text>"
    Then I wait for 5 seconds
    Examples:

      | email                    | text |
      | temp.test.risk@yandex.ru | В течение нескольких минут вы получите письмо с инструкциями по восстановлению пароля. |

  Scenario Outline: Open email
    Given "<email>" should receive an email with "<subject>" as the subject
    Then I should see "Установить пароль"
    Then I enter "<password>" into "user_password" field
    Then I enter "<password>" into "user_password_confirmation" field
    Then I click the button "Установить пароль"
    Then I should see "<text>"

    Examples:
      | password | email                    | subject                             | text |
      | 99999999 | temp.test.risk@yandex.ru | Инструкции по восстановлению пароля | Ваш пароль изменен. Теперь вы вошли в систему. |
