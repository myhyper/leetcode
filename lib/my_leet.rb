
def set_zeroes(matrix)
  rows = matrix.size
  cols = matrix[0].size
  row_zero = false
  col_zero = false

  (0...rows).each { |i| row_zero = true if matrix[i][0] == 0 }
  (0...cols).each { |j| col_zero = true if matrix[0][j] == 0 }

  (1...rows).each do |i|
    (1...cols).each do |j|
      if matrix[i][j] == 0
        matrix[i][0] = 0
        matrix[0][j] = 0
      end
    end
  end

  (1...rows).each do |i|
    (1...cols).each do |j|
      matrix[i][j] = 0 if matrix[i][0] == 0 || matrix[0][j] == 0
    end
  end

  (0...rows).each { |i| matrix[i][0] = 0 if row_zero }
  (0...cols).each { |j| matrix[0][j] = 0 if col_zero }

  matrix
end

class MyLeet
  def self.run(matrix)
    set_zeroes(matrix)
  end
end
