module Euler
  class Prob11
    def initialize(filename)
      @max_prod = -1
      @grid = {}
      File.foreach(filename).with_index do |line, line_num|
        @grid[line_num] = convert_to_int(line)
      end
      @grid_size = @grid[0].length
      @vector_length = 4
    end

    def max_prod_of_rows
      (0..@grid_size-4).each do |row|
        (0..@grid_size-1).each do |col|
          prod = pick_four_horizontal_prod(row,col)
          @max_prod = prod if prod > @max_prod
        end
      end
      @max_prod
    end

    def max_prod_of_cols
      (0..@grid_size-1).each do |col|
        (0..@grid_size-4).each do |row|
          prod = pick_four_vertical_prod(col,row)
          @max_prod = prod if prod > @max_prod
        end
      end
      @max_prod
    end

    def pick_four_horizontal_prod(col, row)
      (col..col+3).inject(1){|prod,el| prod *= @grid[row][el]; prod}
    end

    def pick_four_vertical_prod(col,row)
      (row..row+3).inject(1){|prod,el| prod *= @grid[el][col]; prod} if row+3 < @grid_size
    end

    def pick_four_diag_lr_prod_equal(row)
      (row..row+3).inject(1){|prod,el| prod *= @grid[el][el]; prod}
    end

    def pick_four_diag_greater_prod(row,col)
      (row..row+3).inject(1){|p, el| p *= @grid[el][col]; col += 1;p }
   end

   def pick_four_diag_less_prod(row,col)
    (row..row+3).inject(1){|p,el| p *= @grid[el][col]; col += 1; p }
   end

   def pick_four_diag_up_prod_equal(row, col)
      (row..row+3).inject(1){|prod,el| prod *= @grid[el][col]; col -= 1; prod}
    end

    def pick_four_diag_up_prod_upper(row, col)
      puts "#{row}   #{col} in pick_four_diag_up_prod_equal"
      (col..col+3).inject(1){|prod,el| prod *= @grid[row][el]; row -= 1; prod}
    end

    def pick_four_diag_lr_prod(row, col)
      if row == col
        max_prod = calc_max_prod_equal(row)
      elsif row > col
        max_prod = calc_max_prod_row_greater(row,col)
      else  #row < col
        max_prod = calc_max_prod_col_greater(row,col)
      end
      max_prod
    end

    def calc_max_prod_equal(row)
      #given the start cell coordinates which are equal,
      # this will find the max product along the diagonal
      (row..@grid_size-4).each do |row_n|
        prod = pick_four_diag_lr_prod_equal(row_n)
        @max_prod = prod if prod > @max_prod
      end
      @max_prod
    end

    def calc_max_prod_row_greater(row,col)
      (row..@grid_size-4).each do |r|
        (col..@grid_size-4).each do |c|
          prod = pick_four_diag_greater_prod(r,c)
          @max_prod = prod if prod > @max_prod
        end
      end
      @max_prod
    end

    def calc_max_prod_row_less(row,col)
      catch (:done) do
         (row..@grid_size-4).each do |r|
          (col..@grid_size-4).each do |c|
            throw :done if r == c
            prod = pick_four_diag_less_prod(r,c)
            @max_prod = prod if prod > @max_prod
          end
        end
      end
      @max_prod
    end

    def calc_max_prod_equal_up(row, col)
      catch (:done) do
        (col..@grid_size-4).each do |c|
          prod = pick_four_diag_up_prod_upper(row,c)
          puts "#{row} #{c} #{prod}"
          row -= 1
          @max_prod = prod if prod > @max_prod
          throw :done if row <= @grid_size-4-1
        end
      end
      @max_prod
    end

    def convert_to_int(line)
      line.split(' ').inject([]){ |arr, num_str| arr << num_str.to_i; arr }
    end
  end
end


# File.foreach('tmp/5grid.txt').with_index { |line, line_num|puts "#{line_num}: #{line}" }
