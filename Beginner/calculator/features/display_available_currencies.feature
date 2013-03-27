Feature: display available currencies

  In order to view all the available currencies
  As a User I should enter the menu number of the available currencies

  Scenario: display available currencies
    Given the program is running
    When I enter a 1
    Then I should see "JOD" "JPY" "USD" "EUR" "GBP"
