require 'pry'


file = ARGV[0]

def loc(file)
  string = IO.read(file)


  count = 0

  arr = string.split("\n")

  arr.each do |line|
    
    count += 1 unless line.strip.empty?
      
  end

  count
end


puts loc(file)