module Euler
  class Prob12
    require 'prime'
    require 'set'

    def self.generate_triangular_number(n)
      n*(n+1)/2
    end

    def self.find_answer(num_factors)
      puts Time.now
      n = 2
      num_factors_int = num_factors.to_i
      until num_factors_of(generate_triangular_number(n)) > num_factors_int do
        # puts " #{generate_triangular_number(n)}: #{num_factors_of(n)   }   #{num_factors_int}"
        n += 1
      end
      puts Time.now
      generate_triangular_number(n)
    end

    # http://stackoverflow.com/questions/3398159/all-factors-of-a-given-number
    def self.factors_of(number)
      primes, powers = number.prime_division.transpose
      exponents = powers.map{|i| (0..i).to_a}
      divisors = exponents.shift.product(*exponents).map do |powers|
        primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
      end
      divisors.sort.map{|div| [div, number / div]}
    end

    def self.num_factors_of(number)
      primes, powers = number.prime_division.transpose
      powers.inject(1){ |prod, num| prod *= (num+1); prod}
    end
  end
end