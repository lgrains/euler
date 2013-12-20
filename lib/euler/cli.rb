require 'thor'
require 'euler'

module Euler
  class CLI < Thor
    desc "prob1 ITEM1 ITEM2 ITEM3", "finds the sum of numbers under ITEM1 that are multiples of ITEM2 or ITEM3"
    def prob1(upper_limit, num1, num2)
      puts Euler::Prob1.new(upper_limit, num1, num2).sum
    end
  end
end
