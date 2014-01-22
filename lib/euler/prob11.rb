module Euler
  class Prob11
    attr_reader :grid

    def initialize(filename)
      @max_prod = -1
      @grid = []
      File.foreach(filename) do |line|
        @grid << convert_to_int(line)
      end
      @side_length = @grid[0].length #the grid is square
      @vector_length = 4
      put_zeros_on_top_and_bottom
      put_zeros_in_rows
      @start_row=3
      @start_col=3
      @side_length_with_zeros = @grid[0].length
    end

    def find_max_product_of_four
      max_prod_of_rows
      max_prod_of_cols
      max_prod_of_l2r_diags
      max_prod_of_l2r_up_diags
      @max_prod
    end

    def put_zeros_on_top_and_bottom
      num_zeros = @vector_length-1
      num_zeros.times do
        @grid.unshift( Array.new(@side_length, 0))
        @grid << Array.new(@side_length, 0)
      end
    end

    def put_zeros_in_rows
      num_zeros = @vector_length-1
      @grid.each do |row|
        num_zeros.times do
          row.unshift(0)
          row << 0
        end
      end
    end

    def max_prod_of_rows
      (@start_row..@side_length_with_zeros-@vector_length).each do |row|
        (@start_col..@side_length_with_zeros-@vector_length-3).each do |col|
          prod = pick_four_horizontal_prod(row,col)
          @max_prod = prod if prod > @max_prod
        end
      end
      @max_prod
    end

    def max_prod_of_cols
      (@start_col..@side_length_with_zeros-@vector_length).each do |col|
        (@start_row..@side_length_with_zeros-@vector_length-3).each do |row|
          prod = pick_four_vertical_prod(row,col)
          @max_prod = prod if prod > @max_prod
        end
      end
      @max_prod
    end

    def max_prod_of_l2r_diags
      (@start_row..@side_length_with_zeros-@vector_length).each do |row|
        (@start_col..@side_length_with_zeros-@vector_length).each do |col|
          prod = pick_four_l2r_diag_prod(row,col)
          @max_prod = prod if prod > @max_prod
        end
      end
      @max_prod
    end

    def max_prod_of_l2r_up_diags
      (@start_col..@side_length_with_zeros-@vector_length).each do |col|
        (@start_row..@side_length_with_zeros-@vector_length).each do |row|
          prod = pick_four_r2l_up_diags_prod(row,col)
          @max_prod = prod if prod > @max_prod
        end
      end
      @max_prod
    end

    def pick_four_horizontal_prod(row, col)
      (col..col+3).inject(1){|prod,el| prod *= @grid[row][el]; prod}
    end

    def pick_four_vertical_prod(row,col)
      (row..row+3).inject(1){|prod,el| prod *= @grid[el][col]; prod}
    end

    def pick_four_l2r_diag_prod(row,col)
      count=1
      prod=1
      until count > @vector_length do
        prod *= @grid[row][col]
        row += 1
        col += 1
        count += 1
      end
      prod
    end

    def pick_four_r2l_up_diags_prod(row,col)
      count = 1
      prod = 1
      until count > @vector_length do
        prod *= @grid[row][col] if row && col
        row -= 1
        col += 1
        count += 1
      end
      prod
    end

    def convert_to_int(line)
      line.split(' ').inject([]){ |arr, num_str| arr << num_str.to_i; arr }
    end
  end
end

