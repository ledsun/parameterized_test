require './fizzbuzz'

describe 'FizzBuzz' do
  [
    [0, ''],
    [1, '1'],
    [2, '2'],
    [3, 'FIZZ'],
    [4, '4'],
    [5, 'BUZZ'],
    [6, 'FIZZ'],
    [7, '7'],
    [8, '8'],
    [9, 'FIZZ'],
    [10, 'BUZZ'],
    [11, '11'],
    [12, 'FIZZ'],
    [13, '13'],
    [14, '14'],
    [15, 'FIZZBUZZ'],
    [16, '16'],
    [100, 'BUZZ'],
    [101, '']
  ].each do | number, answer |
    it { expect(fizzbuzz number).to eq answer }
  end
end
