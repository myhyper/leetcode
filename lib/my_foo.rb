# frozen_string_literal: true
$dbg = true

N = 301
N = 6 if $dbg

def maximal_square(matrix)
  $arr = Array.new(N) { Array.new(N) {0} }
  # $arr[0] = matrix[0]
  top = matrix.length
  max_val = 0
  for y in 0..top-1
    for x in 0..(matrix[y].length) - 1
      
      if matrix[y][x] == "1"
        $arr[y][x] = 1
        if y > 0 && x > 0
          $arr[y][x] = [$arr[y-1][x], $arr[y][x-1], $arr[y-1][x-1]].min + 1
        end
        max_val = $arr[y][x] if $arr[y][x] > max_val
      end

    end
  end
  $arr.each{|x| puts x.join("\t")} if $dbg
  max_val**2
end

class MyFoo
  def self.test matrix
    maximal_square(matrix)
  end
end


# 1 1 1 1
# 1 2 2 2
# 1 2 3 3
# 1 2 3 4