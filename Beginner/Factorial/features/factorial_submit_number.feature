Feature: user submits the number

  In order to get the factorial of a number
  As a user I want to enter that number

  Scenario Outline: submit the number
    Given the program is running
    When I enter the number "<number>"
    Then the factorial should be "<result>"

    Scenarios: successful
      | number| result |
      | 5     | 120    |
