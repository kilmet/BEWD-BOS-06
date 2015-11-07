def convert num
  return "IV" if num == 4
  result = ""
  while num >=1
    result += "I"
    num -=1
  end
  return result
end