
def isitnumber(input)
  Float(input) rescue false
end

compnum = (1..100).to_a.shuffle.sample
#puts "#{compnum}"
the_guesses = Array.[]
counter = 0

def higher(guess, guesses, compnum)
  guesses.each do |x|
    if x > compnum && guess > x
      return true
    end
  end
  return false
end

def lower(guess, guesses, compnum)
  guesses.each do |x|
    if x < compnum && guess < x
      return true
    end
  end
  return false
end

puts 'Try to guess what number the computer chose! Enter a number between 1 and 100.'
while counter < 6
  if counter < 5
    counter += 1

#    puts "#{the_guesses}"

    guess = gets.chomp
    if !isitnumber(guess)
      puts 'User, that is not a number. Enter a number!'
      the_guesses << guess
    else
      guess = guess.to_i

      if the_guesses.include?(guess)
        puts "User, you already guessed #{guess}. Are you feeling okay?"
        the_guesses << guess
      elsif guess < 1 || guess > 100
        puts 'User, that number is not between 1 and 100. Enter a number between 1 and 100!'
      elsif guess == compnum
        puts "You have guessed the computer's chosen number! You win!"
        break

      elsif (guess > compnum) && higher(guess, the_guesses, compnum)
        puts 'You picked a number you know is too high!'
        the_guesses << guess

      elsif (guess > compnum) && (higher(guess, the_guesses, compnum) == false)
        puts "Your number is higher than the computer's chosen number."
        the_guesses << guess

      elsif (guess < compnum) && lower(guess, the_guesses, compnum)
        puts "You picked a number you know is too low!"
        the_guesses << guess

      elsif (guess < compnum) && (lower(guess, the_guesses, compnum) == false)
        puts "Your number is lower than the computer's chosen number."
        the_guesses << guess
    end

    end
  elsif counter == 5
    puts "Sorry, User.  You lose.  The computer's number was #{compnum}."
    break

    end

end
