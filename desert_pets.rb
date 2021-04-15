class Armadillo

  def set_name=(armadillo_name)
    @name = armadillo_name
  end

  def get_name
    return @name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    return @owner_name
  end

  def screech
    return "rrraaaaa"
  end

end

class Snake

  def set_name=(snake_name)
    @name = snake_name
  end

  def get_name
    return @name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    return @owner_name
  end

  def hiss
    return "hsssssss"
  end

end

class Hawk

  def set_name=(hawk_name)
    @name = hawk_name
  end

  def get_name
    return @name
  end

  def set_owner=(owner_name)
    @owner_name = owner_name
  end

  def get_owner
    return @owner_name
  end

  def sqwak
    return "cawwwww"
  end

end

my_armadillo = Armadillo.new
my_armadillo.set_name= "Squeaker"
armadillo_name = my_armadillo.get_name

my_snake = Snake.new
my_snake.set_name= "Slither"
snake_name = my_snake.get_name

my_hawk = Hawk.new
my_hawk.set_name= "Feathers"
hawk_name = my_hawk.get_name

puts "#{armadillo_name} says #{my_armadillo.screech},
#{snake_name} says #{my_snake.hiss},
and #{hawk_name} says #{my_hawk.sqwak}."

puts my_armadillo.inspect
puts my_snake.inspect
puts my_hawk.inspect
