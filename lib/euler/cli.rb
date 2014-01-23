require 'thor'
require 'euler'

module Euler
  class CLI < Thor
    desc "prob1 ITEM1 ITEM2 ITEM3", "finds the sum of numbers less than ITEM1 that are multiples of ITEM2 or ITEM3"
    def prob1(upper_limit, num1, num2)
      puts Euler::Prob1.new(upper_limit, num1, num2).sum
    end

    desc "prob2 ITEM","finds the sum of even fibonacci numbers less than ITEM"
    def prob2(upper_limit)
      puts Euler::Prob2.new(upper_limit).sum
    end

    desc "prob3 ITEM", "finds the largest prime factor of ITEM"
    def prob3(number)
      puts Euler::Prob3.new(number).largest
    end

    desc "prob4 ITEM", "finds the largest palindrome number from num_digits"
    def prob4(number)
      puts Euler::Prob4.new(number).largest_palindrome
    end

    desc "prob5 ITEM", "finds the LCM of a range of numbers"
    def prob5(range)
      puts Euler::Prob5.new(range).least_common_multiple
    end

    desc "prob6 ITEM", "finds the difference of the sum of squares"
    def prob6(top_num)
      puts Euler::Prob6.new(top_num).sum_square_difference
    end

    desc "prob8 ITEM", "finds the largest product of 5 adjacent numbers"
    def prob8(num_str)
      puts Euler::Prob8.new(num_str).largest_product
    end

    desc "prob9 ITEM", "finds the product of special pythagorean triplet"
    def prob9
      puts Euler::Prob9.new().special_product
    end

    desc "prob11 ITEM", "finds the max product of 4 consecutive numbers in grid"
    def prob11(grid_file_name)
      puts Euler::Prob11.new(grid_file_name).find_max_product_of_four
    end

    desc "prob12 ITEM", "finds first triangular number with more than 500 factors"
    def prob12(num_factors)
      puts Euler::Prob12.find_answer(num_factors)
    end

    desc "prob13 ITEM1 ITEM2", "finds the first 10 digits of a sum of a large number of large numbers"
    def prob13(filename, num_digits)
      puts Euler::Prob13.new(filename, num_digits).find_sum
    end

    desc "prob14 ITEM","finds a Collatz sequence given the starting number"
    def prob14(start_num)
      puts Euler::Prob14.new(start_num).return_sequence
    end

    desc "prob15 ITEM", "finds the number of lattice paths through a grid"
    def prob15(grid_size)
      puts Euler::Prob15.new(grid_size).num_paths
    end
  end
end
