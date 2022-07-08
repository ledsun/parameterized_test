def fizzbuzz(number)
  case number
  in i if number <= 0
    ''
  in i if i % 15 == 0
    'FIZZBUZZ'
  in i if i % 5 == 0
    'BUZZ'
  in i if i % 3 == 0
    'FIZZ'
  in i if number > 100
    ''
  else
    number.to_s
  end
end
