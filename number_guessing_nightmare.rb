# I got this

h = [1..100]
n = [33, 66].shuffle.sample
5.times do
  puts "Is your number #{n}?"

  if gets.chomp.upcase == 'YES'
    puts 'Computer wins'
    break
  else gets.chomp.upcase == 'NO'
       puts 'Is your number higher or lower?'
       if gets.chomp.upcase == 'HIGHER'
         h = h.each do |x|
           x.delete if x < n || x == n
           #all numbers less than or equal to n are deleted from h
         end
       elsif gets.chomp.upcase == 'LOWER'
         h = h.each do |x|
           x.delete if x > n || x == n
           #all numbers greater than or equal to n are deleted from h
         end
       else
         'User, please enter higher or lower.'
       end
    end
      #"User put the correct input pls"
       puts "#{h}"

  n = h[((h.count) / 3)]
  #n should be the index of h at the length of h divided by 3
end

# Atom plea
