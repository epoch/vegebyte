if (2 + 2 == 5)
  puts 'the world is gone mad'
else
  puts 'nothing new here, move along'
end

person = 'swanny'

if person != 'swanny'
  puts 'wheres swanny'
end

puts 'wheres swanny' if person != 'swanny'
puts 'wheres swanny' unless person == 'swanny'

grade = 'B'

case grade
when 'A'
  puts 'well done you massive nerd'
when 'B','C'
  puts 'pick it up'
else
  puts 'you fail life'
end

if grade == 'A'
  puts 'well done you massive nerd'
elsif grade == 'B' || grade == 'C'
  puts 'pick it up'
else
  puts 'you fail life'
end




