# I got this

h = (1..100).to_a
n = [33, 66].shuffle.sample
#puts "#{h}"

def ask(question)
  puts question
  gets.chomp
end

5.times do
  input = ask("Is your number #{n}?").upcase
  if input == 'YES'
    puts 'Computer wins'
    break
  else
    loop do
      high = ask('Is your number higher or lower?').upcase

      if high == 'HIGHER'
        h.delete_if do |x|
          x <= n
          # all numbers less than or equal to n are deleted from h
        end
        break
      elsif high == 'LOWER'
        h.delete_if do |x|
          x >= n
          # all numbers greater than or equal to n are deleted from h
        end
        break

      else
        high = ask('User, please enter higher or lower.').upcase
      end
    end

    #puts "#{h}"

    n = h[((h.count) / 3)]
    # n should be the index of h at the length of h divided by 3
  end
end
