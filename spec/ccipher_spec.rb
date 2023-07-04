require './lib/ccipher.rb'

describe Ccipher do
  
  it 'shift letters by 1' do
    ccipher = Ccipher.new
    expect(ccipher.play('hello', 1)).to eql('ifmmp')
  end

end
