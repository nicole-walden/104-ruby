class Desert_Pets

  def set_name=(name)
    @name = name
  end

  def get_name
    return @name
  end

  def set_location=(location_name)
    @location_name = location_name
  end

  def get_location
    return @location_name
  end

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
my_armadillo.set_name= "Squeaker"
armadillo_name = my_armadillo.get_name
my_armadillo.set_location= "Texas"
armadillo_location = my_armadillo.get_location

my_snake = Snake.new
my_snake.set_name= "Slither"
snake_name = my_snake.get_name
my_snake.set_location= "California"
snake_location = my_snake.get_location

my_hawk = Hawk.new
my_hawk.set_name= "Feathers"
hawk_name = my_hawk.get_name
my_hawk.set_location= "Arizona"
hawk_location = my_hawk.get_location

puts "#{armadillo_name} lives in #{armadillo_location} and says #{my_armadillo.screech},
#{snake_name} lives in #{snake_location} and says #{my_snake.hiss},
and #{hawk_name} lives in #{hawk_location} and says #{my_hawk.sqwak}."

puts my_armadillo.inspect
puts my_snake.inspect
puts my_hawk.inspect
