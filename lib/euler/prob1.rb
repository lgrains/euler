
module Euler
  class Prob1
    def self.sum(upper_limit, num1, num2)
      new(upper_limit.to_i, num1.to_i, num2.to_i).sum
    end

    def initialize(upper_limit, num1, num2)
      @upper_limit = upper_limit.to_i
      @num1 = num1.to_i
      @num2 = num2.to_i
    end

    def sum
      #find the sum of all natural numbers below upper_limit that are multiples of 3 or 5
      set1 = get_multiples(@num1)
      set1a = (@num1...@upper_limit).inject([]){|arr, n| arr << n if (n % @num1 == 0); arr}
      set2 = get_multiples(@num2)
      merged_set = set1.to_set + set2.to_set
      merged_set.inject(0){ |sum, num| sum += num; sum }
    end

    def get_multiples(base_num)
     (base_num...@upper_limit).inject([]){|arr, n| arr << n if (n % base_num == 0); arr}
    end
  end
end
