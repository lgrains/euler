require 'euler'

module Euler
  class Prob1

    def self.sum(upper_limit, num1, num2)
      ::Prob1.new(upper_limit).sum
    end

    def initialize(upper_limit, num1, num2)
      @upper_limit = upper_limit
      @num1 = num1
      @num2 = num2
    end

    def sum
      #find the sum of all natural numbers below upper_limit that are multiples of 3 or 5
      set1 = set(@num1)
      set2 = set(@num2)
      merged_set = set1 + set2
      merged_set.inject(0){ |sum, num| sum += num }
    end

    def set(base_num)
      (1...@upper_limit).inject([]){|arr, n| arr << n if n % base_num == 0; arr }
    end
  end
end
