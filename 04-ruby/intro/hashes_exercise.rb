require 'pry'

a = ["Anil", "Erik", "Jonathan"]

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

is = {true => "It's true!", false => "It's false"}

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

arr = []

users['Erik'][:favorite_numbers].each do |num|

  if num % 2 == 0
    arr << num
  end

end


even_numbers = users['Erik'][:favorite_numbers].select do |num|
  num.even?
end


numbers = []

users.each do |key, val|
  numbers << val[:favorite_numbers]
end


binding.pry