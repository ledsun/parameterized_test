require './fizzbuzz'

describe 'FizzBuzz' do
  context '数が1より小さいとき' do
    it { expect(fizzbuzz 0).to eq '' } 
  end

  context '数が100より大きいとき' do
    it { expect(fizzbuzz 101).to eq '' } 
  end

  context '数が3で割り切れるとき' do
    it { expect(fizzbuzz 3).to eq 'FIZZ' } 
    it { expect(fizzbuzz 6).to eq 'FIZZ' } 
    it { expect(fizzbuzz 9).to eq 'FIZZ' } 
  end

  context '数が5で割り切れるとき' do
    it { expect(fizzbuzz 5).to eq 'BUZZ' } 
    it { expect(fizzbuzz 10).to eq 'BUZZ' } 
    it { expect(fizzbuzz 20).to eq 'BUZZ' } 
  end

  context '数が15で割り切れるとき' do
    it { expect(fizzbuzz 15).to eq 'FIZZBUZZ' } 
    it { expect(fizzbuzz 30).to eq 'FIZZBUZZ' } 
    it { expect(fizzbuzz 45).to eq 'FIZZBUZZ' } 
  end

  context '数が3でも5でも割り切れないとき' do
    it { expect(fizzbuzz 1).to eq '1' } 
    it { expect(fizzbuzz 2).to eq '2' } 
    it { expect(fizzbuzz 4).to eq '4' } 
    it { expect(fizzbuzz 7).to eq '7' } 
    it { expect(fizzbuzz 8).to eq '8' } 
    it { expect(fizzbuzz 11).to eq '11' } 
    it { expect(fizzbuzz 13).to eq '13' } 
    it { expect(fizzbuzz 14).to eq '14' } 
    it { expect(fizzbuzz 16).to eq '16' } 
  end
end
