require 'pry'

fish = {
  name: 'fishy fish',
  health: 100,
  speed: 5
}

# shark = {
#   name: 'sharky shark',
#   health: 5000,
#   speed: 20
# }

# ocean_world = []
# ocean_world << fish << shark

class Fish
  attr_accessor :name
  attr_reader :health # def health
  attr_writer :speed # def speed=()

  def initialize(name)
    @name = name
    @health = 100
    @speed = 5
  end

  # def name
  #   @name.upcase
  # end

  def sleep
    @health = @health + 10
  end

  def health
    return @health
  end

end

class Car

  def accelerate
  end
end


binding.pry