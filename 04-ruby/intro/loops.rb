puts "this is bottle number 1"
puts "this is bottle number 2"


number = 0

while number < 5

  puts "this is bottle number #{ number }"
  number += 1

end


# while !bank_account.empty?
#   puts 'party on'
# end

# until bank_acount.empty?
#   puts 'party on'
# end

dumplings_devoured = 0

begin
  puts 'eat dumpling'
  dumplings_devoured += 1
end while dumplings_devoured < 500

