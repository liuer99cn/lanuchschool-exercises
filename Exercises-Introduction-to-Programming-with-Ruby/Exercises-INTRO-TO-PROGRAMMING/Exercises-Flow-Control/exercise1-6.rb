#Exercise 2
puts 'Exercise 2'
def upcase(character)
  if character.length > 10
    puts character.upcase
  else
    puts character
  end
end

puts upcase('Joe David')
puts upcase('Lady Gaga King')

#Exercise 3
puts 'Exercise 3'
puts "please input a number in 0 to 100"
number = gets.chomp.to_i

def between_number(number)
  if (number <= 50) && (number > 0)
    puts "your input number is between 0 and 50"
  elsif (number <= 100) && (number > 50)
    puts "your input number is between 51 and 100"
  elsif number < 0
    puts "You can't enter a negative number!"
  else
    puts "your input number is above 100"
  end
end

between_number(number)
puts '*' * 10

#Exercise 5
puts 'Exercise 5'
puts "please input a number in 0 to 100"
number = gets.chomp.to_i

def evaluate_number(number)
  case
    when number < 0
      puts "You can't enter a negative number!"
    when number <= 50
      puts "your input number is between 0 and 50"
    when number <= 100
      puts "your input number is between 51 and 100"
    else
      puts "your input number is above 100"
  end
end

evaluate_number(number)
puts '*' * 10

#Exercise 6
puts 'Exercise 6'
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)