words = %w{hello what is up dude}

# lengths(words) # => [5,4,2,2,4]


def lengths(words)
  words.map do |word|
    word.length
  end
end

# p lengths(words)

# expected result
# actual result
# when you run a function
# if expected == actual

# def test(expected, actual, message)
#   if expected == actual
#     puts "yay: #{message}"
#   else
#     puts "fail: #{message}"
#   end
# end

# test [5,4,2,2,4], lengths(words) , "test example"
# test([], lengths([]), "test empty array")