module Euler
  class Prob16
    def initialize(power_of_two)
      @power_of_two = power_of_two.to_i
    end

    def sum_of_digits
      sum = 0
      num = 2 ** @power_of_two
      until num == 0 do
        sum += num % 10
        num /= 10
      end
      sum
    end

  end
end