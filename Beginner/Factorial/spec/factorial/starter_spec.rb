require 'spec_helper'

describe Starter do
  let(:output) { double('output').as_null_object }
  let(:starter) { Starter.new(output) }

  describe "#start" do
    it "sends a welcome message" do
      output.should_receive(:puts).with('Welcome to find the Factorial program!')
      starter.start
    end

    it "prompts for the number" do
      output.should_receive(:puts).with('Enter the number you wish to find its Factorial:')
      starter.start
    end
  end

  describe "#find" do
    it "sends the result to output" do
      starter.start
      output.should_receive(:puts).with("The factorial of 5 is: 120")
      starter.find(5)
    end
  end
end
