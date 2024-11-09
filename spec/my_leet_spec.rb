# frozen_string_literal: true

require 'my_leet'

describe MyLeet do
  context '.run TDD verification' do
    it 'test case 0' do
      expect(
        MyLeet.run( # ↓ inputs
          'horse', 'ros'
        ) # ↓ output should be
      ).to eq 3
    end
    it 'test case 1' do
      expect(
        MyLeet.run( # ↓ inputs
          'intention', 'execution'
        ) # ↓ output should be
      ).to eq 5
    end

  end
end
