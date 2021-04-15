class Armadillo

  @@total_armadillos = 0

  def initialize
    @@total_armadillos += 1
  end

  def self.current_count
    puts "There are currently #{@@total_armadillos} instances of my Armadillo class."
  end

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

my_armadillo = Armadillo.new
my_armadillo.set_name= "Squeaker"
armadillo_name = my_armadillo.get_name
puts "#{armadillo_name} says #{my_armadillo.screech}."

Armadillo.current_count
puts Armadillo.inspect
puts my_armadillo.inspect
