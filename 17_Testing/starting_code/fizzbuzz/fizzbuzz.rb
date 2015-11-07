def divisible_by_3 num
  num % 3 == 0
end

def divisible_by_5 num
  num % 5 == 0
end

def fizzbuzz num
  if divisible_by_3(num) && divisible_by_5(num)
    return "fizzbuzz"
  end
  if divisible_by_3(num)
    return "fizz"
  end
  if divisible_by_5(num)
    return "buzz"
  end
  num

end

(1..100).each do |num|
  puts fizzbuzz(num)
end