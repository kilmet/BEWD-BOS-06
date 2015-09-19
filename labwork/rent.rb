

def calculate_bills rent, utils, cable, roommates
  ((rent + utils + cable)/roommates).round(2)
end

puts "How much is rent?"
rent = gets.chomp.to_f

puts "How much were utilities?"
utils = gets.chomp.to_f

puts "How much is cable?"
cable = gets.chomp.to_f

puts "How many roommates do you have?"
roommates = gets.chomp.to_i

if rent > 0 && utils > 0 && cable > 0
  puts calculate_bills rent, utils, cable, roommates
else
  puts "could not calculate bills"
end