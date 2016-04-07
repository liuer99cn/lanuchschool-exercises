#Exercise 1
puts "Yue" + "Liu"

#Exercise 2
number_thousands = 6378 / 1000
puts number_thousands

number_hundreds = 6378 % 1000 / 100
puts number_hundreds

number_tens = 6378 % 1000 % 100 / 10
puts number_tens

number_ones = 6378 % 1000 % 100 % 10
puts number_ones

#Exercise 3
movie = {the_land: 1975,
         the_story: 2004,
         man_of_steel: 2013,
         zoolander: 2001,
         raiders_of_the_lost_ark: 1981

        }
puts movie[:the_land]
puts movie[:the_story]
puts movie[:man_of_steel]
puts movie[:zoolander]
puts movie[:raiders_of_the_lost_ark]

#Exercise 4
dates = []
dates[0] = movie[:the_land]
dates[1] = movie[:the_story]
dates[2] = movie[:man_of_steel]
dates[3] = movie[:zoolander]
dates[4] = movie[:raiders_of_the_lost_ark]

puts '*'*10
puts dates

#Exercise 5
puts 5*4*3*2*1
puts 6*5*4*3*2*1
puts 7*6*5*4*3*2*1
puts 8*7*6*5*4*3*2*1

#Exercise 6
puts 5.78 * 5.78
puts 48.98009 * 48.98009
puts 6678.9 * 6678.9

#Exercise 7
# SyntaxError:
# (irb):2: syntax error, unexpected ')', expecting '}'
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'





