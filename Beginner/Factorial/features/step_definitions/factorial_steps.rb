class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given(/^I have not yet entered a number$/) do
end

Given(/^the program is running$/) do
  @starter = Starter.new(output)
  @starter.start
end

When(/^I start the program$/) do
  @starter = Starter.new(output)
  @starter.start
end

When(/^I enter the number "([^"]*)"$/) do |number|
  @starter.find(number.chomp.to_i)
  @number = number
end

Then(/^I should see "([^"]*)"$/) do |message|
  output.messages.should include(message)
end

Then(/^the factorial should be "(.*?)"$/) do |result|
  output.messages.should include("The factorial of #{@number} is: #{result}")
end


