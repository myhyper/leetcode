# frozen_string_literal: true
$dbg = true


class StockPrice
  def initialize()
    @arr = {}
    @max = -999
    @min = nil
    @top = nil
    @top_idx = -1
    @max_idx = -1
  end


=begin
  :type idx: Integer
  :type price: Integer
  :rtype: Void
=end
  def update(idx, price)
    @arr[idx] = (price)

    @top_idx = idx if @top_idx < idx
    if @max_idx == idx
      # maxの値が変わる場合、maxを更新する
      @max = @arr.values.max
      @max_idx = @arr.key(@max)
    else
      if @max < price
        @max = price
        @max_idx = idx
      end
    end
    @min = nil
    @top = nil
    nil
  end


=begin
  :rtype: Integer
=end
  def current()
    @arr[@top_idx]
  end


=begin
  :rtype: Integer
=end
  def maximum()
    # hash から max valueをさがす
    return @max unless @max.nil?
    @max = @arr.values.max
  end


=begin
  :rtype: Integer
=end
  def minimum()
    return @min unless @min.nil?
    @min = @arr.values.min
  end


end

# Your StockPrice object will be instantiated and called as such:
# obj = StockPrice.new()
# obj.update(timestamp, price)
# param_2 = obj.current()
# param_3 = obj.maximum()
# param_4 = obj.minimum()

class MyFoo
  def self.test cmds, args
    sp = StockPrice.new

    outputs = []
    rtv = nil
    cmds.each_with_index do |cmd, i|
      arg = args[i]
      rtv = nil and sp = StockPrice.new if cmd == 'StockPrice'
      rtv = sp.update arg[0], arg[1] if cmd == 'update'
      rtv = sp.current if cmd == 'current'
      rtv = sp.maximum if cmd == 'maximum'
      rtv = sp.minimum if cmd == 'minimum'
      outputs.push(rtv)
    end
    outputs
  end
end
