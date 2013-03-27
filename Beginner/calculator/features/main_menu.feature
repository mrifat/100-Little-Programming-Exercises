Feature: main menu

  In order to use the calculator
  As a User I should see the main menu in which
  I can see what options this Calculator offers

  Scenario: main menu
    Given I'm not yet using the calculator
    When I start the program
    Then I should see "Welcome to currency calculator:"
    And I should see "Enter the number corresponding to the menu item:"
    And I should see "1- List of all available currencies and their conversion rate"
    And I should see "2- Fill a new currency form"
    And I should see "3- Convert"
    And I should see "4- Help"
    And I should see "5- Exit"
