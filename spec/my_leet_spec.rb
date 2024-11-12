# frozen_string_literal: true

require 'my_leet'

describe MyLeet do
  context '.run TDD verification' do
    it 'test case 0' do
      expect(
        MyLeet.run( # ↓ inputs
          [[1,1,1],[1,0,1],[1,1,1]]
        ) # ↓ output should be
      ).to eq [[1,0,1],[0,0,0],[1,0,1]]
    end
    it 'test case 1' do
      expect(
        MyLeet.run( # ↓ inputs
          [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
        ) # ↓ output should be
      ).to eq [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
    end

  end
end
