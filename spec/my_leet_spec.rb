# frozen_string_literal: true

require 'my_leet'

describe MyLeet do
  context '.run TDD verification' do
    it 'test case 0' do
      expect(
        MyLeet.run( # ↓ inputs
          2, [[1,2]]
        ) # ↓ output should be
      ).to eq 2
    end
    it 'test case 1' do
      expect(
        MyLeet.run( # ↓ inputs
          3, [[1,3],[2,3]]
        ) # ↓ output should be
      ).to eq 3
    end

  end
end
