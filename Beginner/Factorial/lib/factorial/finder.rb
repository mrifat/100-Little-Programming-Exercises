class Finder
  def initialize(number)
    @number = number
    @factorials = Hash[*File.read('factorials.txt').split(/, |\n/)]
  end

  def recursive_factorial(number, value, key)
    save_to_file(key + 1, value) if key < number
    number == key ? value : recursive_factorial(number, value * (key + 1), key + 1)
  end

  def search_file(number)
    raise ArgumentError.new, "\nYou have called recursive_factorial with:\n1)A negative number\n2)Zero\n3)Non numeric argument" if number <= 0
    !@factorials[number.to_s].nil? ? @factorials[number.to_s] : recursive_factorial(number, @factorials[@factorials.keys.last].to_i, @factorials.keys.last.to_i)
  end

  def save_to_file(key, value)
    File.open('factorials.txt', 'a') { |f| f.puts "#{key}, #{value * key}" }
  end
end
