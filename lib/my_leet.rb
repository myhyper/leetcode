# frozen_string_literal: true
$dbg=`uname -a`.include?('Darwin') # set debug mode only for mac

# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  return 1 if n == 1
  return -1 if trust.length == 0
  trust_hash = {}
  trusted_hash = {}
  trust.each do |t|
    trust_hash[t[0]] = true
    trusted_hash[t[1]] = trusted_hash[t[1]] ? trusted_hash[t[1]] + 1 : 1
  end
  trusted_hash.each do |k, v|
    return k if v == n - 1 && !trust_hash[k]
  end
  -1
end

class MyLeet
  def self.run(n, trust)
    find_judge(n, trust)
  end
end
