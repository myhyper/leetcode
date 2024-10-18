# frozen_string_literal: true
$dbg = true
$dbg = false


# @param {Integer[]} chalk
# @param {Integer} k
# @return {Integer}
def chalk_replacer(chalk, k)
  total_chalk = chalk.sum

  k %= total_chalk

  chalk.each_with_index do |c, idx|
    return idx if k < c
    k -= c
  end
end

class MyLeet
  def self.run chalk, k
    chalk_replacer chalk, k
  end
end
