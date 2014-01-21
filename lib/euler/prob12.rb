module Euler
  class Prob12

    def initialize(num_factors)
      @num_factors = num_factors
      @tri_num_array = [1]
      @first_num = 2
    end

    def self.generate_triangular_number(n)
      n*(n+1)/2
    end

    def self.find_factor_count(n)
      count = 1
      2.upto(n) do |f|
        count += 1 if n % f == 0
      end
      count
    end

    def self.find_answer(num_factors)
      n = 2
      @tri_num_array= []
      while find_factor_count(self.generate_triangular_number(n)) <= num_factors do
        puts "  #{n}   #{generate_triangular_number(n)}  #{find_factor_count(generate_triangular_number(n))} "
        @tri_num_array << generate_triangular_number(n+=1)
      end
      @tri_num_array.last
    end
  end
end