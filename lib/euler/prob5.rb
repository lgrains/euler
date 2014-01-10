module Euler
  class Prob5
    def initialize(str)
      @range = Range.new(*str.split("..").map(&:to_i))
    end

    def least_common_multiple
      num_array = @range.to_a
      num1 = num_array.shift
      num2 = num_array.shift
      repl = num1.lcm(num2)
      while num_array.length > 0 do
        num2 = num_array.shift
        repl = repl.lcm(num2)
      end
      repl
    end
  end
end
