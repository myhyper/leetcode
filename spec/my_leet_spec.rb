# frozen_string_literal: true

require 'my_leet'

describe MyLeet do
  context '.run' do
    it 'test case 0' do
      expect(MyLeet.run(
        [5,1,5],
        22
      )).to eq 0
    end

    it 'test case 1' do
      expect(MyLeet.run(
        [3,4,1,2],
        25
      )).to eq 1
    end

    it 'test case 2' do
      expect(MyLeet.run(
        [16,29,70,14,81,16,21,70,66,45,65,37,72,58,58,98,63,6,61,1,18,37,97,90,100,75,59,73,50,100],
        940635372
      )).to eq 14
    end
    
  end
end
