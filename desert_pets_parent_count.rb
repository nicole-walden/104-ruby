class Desert_Pets

  @@total_pets = 0

  def initialize
    @@total_pets += 1
  end

  def self.current_count
    puts "There are currently #{@@total_pets} instances of my Desert_Pets class."
  end

  attr_accessor :name, :location

end

class Armadillo < Desert_Pets

  def screech
    return "rrraaaaa"
  end

end

class Snake < Desert_Pets

  def hiss
    return "hsssssss"
  end

end

class Hawk < Desert_Pets

  def sqwak
    return "cawwwww"
  end

end

my_armadillo = Armadillo.new
my_armadillo.name= "Squeaker"
armadillo_name = my_armadillo.name
my_armadillo.location= "Texas"
armadillo_location = my_armadillo.location

my_snake = Snake.new
my_snake.name= "Slither"
snake_name = my_snake.name
my_snake.location= "California"
snake_location = my_snake.location

my_hawk = Hawk.new
my_hawk.name= "Feathers"
hawk_name = my_hawk.name
my_hawk.location= "Arizona"
hawk_location = my_hawk.location

puts "#{armadillo_name} lives in #{armadillo_location} and says #{my_armadillo.screech},
#{snake_name} lives in #{snake_location} and says #{my_snake.hiss},
and #{hawk_name} lives in #{hawk_location} and says #{my_hawk.sqwak}."

Desert_Pets.current_count
puts Desert_Pets.inspect
puts my_armadillo.inspect
puts my_snake.inspect
puts my_hawk.inspect
