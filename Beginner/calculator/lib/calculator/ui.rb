class UI
  def initialize(output)
    @output = output
    @menu = { 1 => :available_currencies, 2 => :conv, 3 => :help, 4 => :exit }
  end

  def start
    puts
    File.open('welcome.txt').each_line { |line| @output.puts line.strip }
  end

  def load_menu(menu_number)
    self.send(@menu[menu_number.to_i]) if @menu.has_key?(menu_number.to_i)
    start
  end

  private

  def available_currencies
    @output.puts "Available currencies"
    @c = Currency.new
    currencies = @c.show
    currencies.each { |currency| @output.puts currency}
  end

  def conv
    @output.puts "Conversion menu"
    @output.puts "Please enter the amount followed by the current currency and the currency you want to convert to:\nExample: 100 USD EUR"
    @c = Currency.new
    @output.puts "#{@c.convert(gets.chomp.upcase.split(' '))}"
  end

  def help
    @output.puts "Help menu"
    @output.puts "\nList available currencies:\n    Enter 1 in the main menu to see all the available currencies\n\n
Convert currencies:\n    Enter 2 in the main menu to load the conversion menu.\n    Enter the amount of money you want to convert followed
    by the cuurent currency and the currency you want to convert to.\n    Example: 100 USD EUR"
  end

end
