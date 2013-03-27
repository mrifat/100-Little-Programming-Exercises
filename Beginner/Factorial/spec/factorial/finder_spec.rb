require 'spec_helper'

describe Finder do
  describe "Factorial of 15 IF not saved to file" do
    it "returns 1307674368000" do
      finder = Finder.new(15)
      finder.recursive_factorial(15, 479001600, 12).should == 1307674368000
    end
  end

  describe "Already saved to the file" do
    it "returns 5040" do
      finder = Finder.new(7)
      finder.search_file(7).should == "5040"
    end
  end
end
