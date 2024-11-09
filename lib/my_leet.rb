# frozen_string_literal: true
$dbg=`uname -a`.include?('Darwin') # set debug mode only for mac

# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  m, n = word1.size, word2.size
  return m + n if m * n == 0

  dp = Array.new(m + 1) { Array.new(n + 1) }
  (0..m).each { |i| dp[i][0] = i }
  (0..n).each { |j| dp[0][j] = j }

  (1..m).each do |i|
    (1..n).each do |j|
      left = dp[i - 1][j] + 1
      down = dp[i][j - 1] + 1
      left_down = dp[i - 1][j - 1]
      left_down += 1 if word1[i - 1] != word2[j - 1]
      dp[i][j] = [left, down, left_down].min
    end
  end

  dp[m][n]
end

class MyLeet
  def self.run(word1, word2)
    min_distance(word1, word2)
  end
end
