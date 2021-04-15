puts "What is your birthdate? (MMDDYYYY)"
birthdate = gets

def get_birthpath_number(birthdate)
  number = birthdate[0].to_i +
  birthdate[1].to_i +
  birthdate[2].to_i +
  birthdate[3].to_i +
  birthdate[4].to_i +
  birthdate[5].to_i +
  birthdate[6].to_i +
  birthdate[7].to_i

  number = number.to_s
  number = number[0].to_i + number[1].to_i

  if (number > 9)
    number = number.to_s
    number = number[0].to_i + number[1].to_i
  end

  return number
end

birthpath_number = get_birthpath_number(birthdate)

def greeting(birthpath_number)
  case birthpath_number
  when 1
    puts "One. You're awesome!"
  when 2
    puts "Two. What a cool cat."
  when 3
    puts "Three. Life is your oyster."
  when 4
    puts "Four. You are a rock star."
  when 5
    puts "Five. Chart your own course."
  when 6
    puts "Six. You have so much potential. Reach for it!"
  when 7
    puts "Seven. Treasures await you."
  when 8
    puts "Eight. Kindness is your superpower."
  when 9
    puts "Nine. Stay curious."
  else
    puts "Uh oh! Your birthpath number is not 1-0!"
  end
end

puts greeting(birthpath_number)
