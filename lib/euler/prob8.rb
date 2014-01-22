module Euler
  class Prob8

    def initialize(num_string)
      @num_string = num_string
      @digit_array = @num_string.split('')
      @digit_array.map!{|s| s.to_i}
    end

    def largest_product
      max_prod = -1
      five = @digit_array.shift(4)
      begin
        five.push(@digit_array.shift)
        product_of_five = five.inject(1){|prod, el| prod *= el; prod}
        if  product_of_five > max_prod
          max_prod =  product_of_five
        end
        five.shift
      end until @digit_array.size == 0
      max_prod
    end
  end
end
