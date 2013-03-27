class Starter
  def initialize(output)
    @output = output
  end
  def start
    @output.puts 'Welcome to find the Factorial program!'
    @output.puts 'Enter the number you wish to find its Factorial:'
  end

  def find(number)
    @finder = Finder.new(number)
    @output.puts "The factorial of #{number} is: #{@finder.search_file(number)}"
  end
end
