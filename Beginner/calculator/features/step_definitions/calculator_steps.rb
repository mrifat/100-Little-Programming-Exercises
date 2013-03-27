class Output
  def messages
    @messages ||=[]
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given(/^I'm not yet using the calculator$/) do
end

Given(/^main menu is displayed$/) do
  @ui = UI.new(output)
  @ui.start
end

Given(/^the program is running$/) do
  @ui = UI.new(output)
  @ui.start
end

When(/^I start the program$/) do
  @ui = UI.new(output)
  @ui.start
end

When(/^I enter a (\d+)$/) do |number|
  @ui.load_menu(number)
end

When(/^I enter the (\d+)"(.*?)""(.*?)"$/) do |amount, from, to|
  @c = Currency.new
  @result = @c.convert([amount, from, to])
end

Then(/^I should see "([^"]*)"$/) do |message|
  output.messages.should include(message)
end

Then(/^I should see the "([^"]*)"$/) do |menu|
  output.messages.should include(menu)
end

Then(/^I should see (\d+)\.(\d+)$/) do |arg1, arg2|
  @result.should == ("#{arg1}.#{arg2}").to_f
end

Then(/^I should see "(.*?)" "(.*?)" "(.*?)" "(.*?)" "(.*?)"$/) do |arg1, arg2, arg3, arg4, arg5|
  output.messages.should include(arg1, arg2, arg3, arg4, arg5)
end
