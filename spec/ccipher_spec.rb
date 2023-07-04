require './lib/ccipher.rb'

describe Ccipher do
  
  it 'shift letters by 1' do
    ccipher = Ccipher.new
    expect(ccipher.play('hello', 1)).to eql('ifmmp')
  end

  it 'takes more than 1 word' do
    ccipher = Ccipher.new
    expect(ccipher.play('hello world', 1)).to eql('ifmmp xpsme')
  end

  it 'can cipher upcase and downcase words' do
    ccipher = Ccipher.new
    expect(ccipher.play('HeLLo wOrLd', 1)).to eql('IfMMp xPsMe')
  end

  it 'takes more than 26 shift value' do
    ccipher = Ccipher.new
    expect(ccipher.play('Hello world!', 34)).to eql('Pmttw ewztl!')
  end

end
