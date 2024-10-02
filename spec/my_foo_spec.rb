# frozen_string_literal: true

require 'my_foo'

describe MyFoo do
  context '.test' do
    it 'test case 0' do
      expect(MyFoo.test(
        ["StockPrice", "update", "update", "current", "maximum", "update", "maximum", "update", "minimum"],
        [[], [1, 10], [2, 5], [], [], [1, 3], [], [4, 2], []]
      )).to eq [nil, nil, nil, 5, 10, nil, 5, nil, 2]
    end

    it 'test case 1' do
      expect(MyFoo.test(
        ["StockPrice", "update", "update", "update", "current", "maximum", "update", "maximum", "update", "minimum"],
        [[], [1, 10], [3, 20], [2, 5], [], [], [1, 3], [], [4, 2], []]
      )).to eq [nil, nil, nil, nil, 20, 20, nil, 20, nil, 2]
    end
    
  end
end
