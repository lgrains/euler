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
      @tri_num_array= []
      factors = factors_of(generate_triangular_number(n))
      puts "  #{factors.each{|f| p f}}  #{factors.to_set.length} "
      while factors.to_set.length <= num_factors_int do
        @tri_num_array << generate_triangular_number(n+=1)
         factors = factors_of(generate_triangular_number(n))
         puts "  #{factors.each{|f| p f}}  #{factors.to_set.length} "
      end
      puts Time.now
      @tri_num_array.last
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
  end
end