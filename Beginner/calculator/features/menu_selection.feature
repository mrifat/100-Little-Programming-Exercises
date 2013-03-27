Feature: menu_selection

  In order to open a specific menu
  As a User I have to enter the menu item number

  Scenario Outline: submenus
    Given main menu is displayed
    When I enter a <number>
    Then I should see the <menu>

    Scenarios: available currencies
      | number | menu                        |
      | 1      | "Available currencies"      |

    Scenarios: convert menu
      | number | menu              |
      | 2      | "Conversion menu" |

    Scenarios: help menu
      | number | menu        |
      | 3      | "Help menu" |

    Scenarios: exit
      | number | menu       |
      | 4      | "Good Bye" |

