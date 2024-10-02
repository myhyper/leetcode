# frozen_string_literal: true

require 'my_foo'

describe MyFoo do
  context '.test' do
    it 'returns 0' do
      # skip
      expect(MyFoo.test(
        [
          ["1","0","1","0","0"],
          ["1","0","1","1","1"],
          ["1","1","1","1","1"],
          ["1","0","0","1","0"]
        ]
      )).to eq 4
    end
    it 'returns 0' do
      # skip
      expect(MyFoo.test(
        [
          ["1","0","1","0","0"],
          ["1","0","1","1","1"],
          ["1","1","1","1","1"],
          ["1","0","1","1","1"]
        ]
      )).to eq 9
    end
    it 'returns 1' do
      # skip
      expect(MyFoo.test(
        [
          ["0","1"],
          ["1","0"]
        ]
      )).to eq 1
    end
    it 'returns 2' do
      # skip
      expect(MyFoo.test(
        [["0"]]
      )).to eq 0
    end
  end
end
