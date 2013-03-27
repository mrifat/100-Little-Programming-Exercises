class Currency
  def initialize
    @currency =
      {
      "JOD" => {"JPY" => 0.00747, "USD" => 0.70701, "EUR" => 0.92117, "GBP" => 1.07839},
      "JPY" => {"JOD" => 133.907, "USD" => 94.7855, "EUR" => 123.597, "GBP" => 144.706},
      "USD" => {"JOD" => 1.41293, "JPY" => 0.01055, "EUR" => 1.30256, "GBP" => 1.52469},
      "EUR" => {"JOD" => 1.08415, "JPY" => 0.00810, "USD" => 0.76777, "GBP" => 1.17046},
      "GBP" => {"JOD" => 0.92640, "JPY" => 0.00692, "USD" => 0.65582, "EUR" => 0.85437}
    }
  end

  def convert(*args)
    amount, from, to = args.shift
    amount.to_i <= 0 ? "Nothing to convert" : @currency.has_key?(from) ? @currency[from].has_key?(to) ? @x = (amount.to_i / @currency[from][to]).round(2) : "No such currency" : "No such currency"
  end

  def show
    @currency.keys
  end

end
