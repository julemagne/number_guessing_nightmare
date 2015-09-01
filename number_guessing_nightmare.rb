# I got this

def isitnumber(input)
  Float(input) rescue false
end

puts "User, enter a number between 1 and 100.
The computer gets five tries to guess your number. "
humnum = gets.chomp
if !isitnumber(humnum)
  puts 'User, that is not a number. Enter a number!'
else
  humnum = humnum.to_i
  puts "66"
  puts "Is the number:
  1. Too high?
  2. Too low?
  3. The number you chose?
  Type 1, 2, or 3. "
  if gets.chomp.to_i = 1
    puts "22"
  elsif gets.chomp.to_i = 2
    puts "77"
  elsif gets.chomp.to_i = 3
    puts "The computer has guessed your number!"
  else
    puts "User, enter 1, 2, or 3."
end
