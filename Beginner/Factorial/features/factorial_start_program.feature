Feature: user starts the program

  In order to be abel to find the factorial of a number
  As a user I have to start the program

  Scenario: start program
    Given I have not yet entered a number
    When I start the program
    Then I should see "Welcome to find the Factorial program!"
    And I should see "Enter the number you wish to find its Factorial:"
