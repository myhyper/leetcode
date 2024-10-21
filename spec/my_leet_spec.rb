# frozen_string_literal: true

require 'my_leet'

describe MyLeet do
  context '.run' do
    it 'test case 0' do
      expect(MyLeet.run(
        "/../"
      )).to eq '/'
    end

    it 'test case 1' do
      expect(MyLeet.run(
        "/.../a/../b/c/../d/./"
      )).to eq "/.../b/d"
    end

    it 'test case 2' do
      expect(MyLeet.run(
        "/home/user/Documents/../Pictures"
      )).to eq "/home/user/Pictures"
    end
    
  end
end
