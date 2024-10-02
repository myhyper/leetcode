# frozen_string_literal: true

require 'my_foo'

describe MyFoo do
  context '.test' do
    it 'returns 0' do
      expect(MyFoo.test(
        [2,7,11,15], 9
      )).to eq [0, 1]
    end
    it 'returns 0' do
      expect(MyFoo.test(
        [3,2,4], 6
      )).to eq [1,2]
    end
    it 'returns 1' do
      expect(MyFoo.test(
      [3,3], 6
      )).to eq [0,1]
    end
  end
end
