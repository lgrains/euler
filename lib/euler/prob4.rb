module Euler
  class Prob4
    def initialize(num_digits)
      @num_digits = num_digits.to_i
      @largest_number_str = '9' * @num_digits
      @largest_number = @largest_number_str.to_i
    end

    def largest_palindrome
      time = Time.now
      max_pal = -1
      @largest_number.downto(1) do |n1|
        n1.downto(1) do |n2|
          product = n1*n2
          if palindrome?(product)
            if product > max_pal
              max_pal = product
              puts "n1=#{n1}  and n2=#{n2} and max_pal is #{max_pal}"
            end
          end
        end
      end
      time_diff = Time.now - time
      puts time_diff
      return max_pal
    end

    def palindrome?(number)
      str = number.to_s
      arr = str.split('')
      arr == arr.reverse
    end
  end
end
