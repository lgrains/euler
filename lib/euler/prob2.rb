module Euler
  class Prob2
    def self.sum(upper_limit)
      new(upper_limit).sum
    end

    def initialize(upper_limit)
      @upper_limit = upper_limit.to_i
    end

    def sum
      n1 = 1
      n2 = 2
      total = 2
      while (next_term = fibonacci(n1, n2)) < @upper_limit
        total += next_term if next_term.even?
        n1 = n2
        n2 = next_term
      end
      total
    end

    def fibonacci(n1, n2)
      n1 + n2
    end
  end
end
