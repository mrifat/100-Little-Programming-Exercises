Feature: convert currencies

  In order to convert currencies
  As a User I have to Enter the amount
  I want to convert followed by the
  current currency and the currency to convert.

  Scenario Outline: convert
    Given the program is running
    When I enter the <amount><from><to>
    Then I should see <converted_amount>

    Scenarios: 100 JOD USD
      | amount | from  | to    | converted_amount |
      | 100    | "JOD" | "USD" | 141.44           |

    Scenarios: 100 USD JOD
      | amount | from  | to    | converted_amount |
      | 100    | "USD" | "JOD" | 70.77            |

    Scenarios: 100 JOD EUR
      | amount | from  | to    | converted_amount |
      | 100    | "JOD" | "EUR" | 108.56           |

    Scenarios: 100 EUR JOD
      | amount | from  | to    | converted_amount |
      | 100    | "EUR" | "JOD" | 92.24            |

    Scenarios: 100 JOD JPY
      | amount | from  | to    | converted_amount |
      | 100    | "JOD" | "JPY" | 13386.88         |

    Scenarios: 10000 JPY JOD
      | amount | from  | to    | converted_amount |
      | 10000  | "JPY" | "JOD" | 74.68            |

    Scenarios: 100 JOD GBP
      | amount | from  | to    | converted_amount |
      | 100    | "JOD" | "GBP" | 92.73            |


    Scenarios: 100 GBP JOD
      | amount | from  | to    | converted_amount |
      | 100    | "GBP" | "JOD" | 107.94           |

    Scenarios: 100 JPY USD
      | amount | from  | to    | converted_amount |
      | 100    | "JPY" | "USD" | 1.06             |

    Scenarios: 100 USD JPY
      | amount | from  | to    | converted_amount |
      | 100    | "USD" | "JPY" | 9478.67          |

    Scenarios: 100 JPY EUR
      | amount | from  | to    | converted_amount |
      | 100    | "JPY" | "EUR" | 0.81             |

    Scenarios: 100 EUR JPY
      | amount | from  | to    | converted_amount |
      | 100    | "EUR" | "JPY" | 12345.68         |

    Scenarios: 100 JPY GBP
      | amount | from  | to    | converted_amount |
      | 100    | "JPY" | "GBP" | 0.69             |

    Scenarios: 100 GBP JPY
      | amount | from  | to    | converted_amount |
      | 100    | "GBP" | "JPY" | 14450.87         |

    Scenarios: 100 USD EUR
      | amount | from  | to    | converted_amount |
      | 100    | "USD" | "EUR" | 76.77            |

    Scenarios: 100 EUR USD
      | amount | from  | to    | converted_amount |
      | 100    | "EUR" | "USD" | 130.25           |

    Scenarios: 100 USD GBP
      | amount | from  | to    | converted_amount |
      | 100    | "USD" | "GBP" | 65.59            |

    Scenarios: 100 GBP USD
      | amount | from  | to    | converted_amount |
      | 100    | "GBP" | "USD" | 152.48           |

    Scenarios: 100 EUR GBP
      | amount | from  | to    | converted_amount |
      | 100    | "EUR" | "GBP" | 85.44            |

    Scenarios: 100 GBP EUR
      | amount | from  | to    | converted_amount |
      | 100    | "GBP" | "EUR" | 117.05           |

