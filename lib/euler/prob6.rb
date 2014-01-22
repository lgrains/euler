module Euler
  class Prob6
    def initialize(number_of_naturals)
      @number_of_naturals = number_of_naturals.to_i
    end

    def sum_of_squares
      Range.new(1,@number_of_naturals).to_a.inject(0){|sum, element| sum += element*element}
    end

    def square_of_sum
      sum = (1..@number_of_naturals).to_a.inject(0){|sum, element| sum += element}
      sum*sum
    end

    def sum_square_difference
      square_of_sum - sum_of_squares
    end
  end
end
