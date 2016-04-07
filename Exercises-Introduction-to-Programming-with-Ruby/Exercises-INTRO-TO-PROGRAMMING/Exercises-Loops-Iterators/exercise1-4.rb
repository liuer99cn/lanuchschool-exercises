#Exercise 2
puts 'Exercise 2'
user_input = ""
while user_input != "STOP" do
  puts "please input something:"
  user_input = gets.chomp
  puts "your input is #{user_input}"
end

#Exercise 3
puts 'Exercise 3'
arr = ['david','peter','jane','susan']
arr.each_with_index do |name, index|
  puts "#{index+1}.#{name}"
end

#Exercise 4
puts 'Exercise 4'
puts "please input a number:"
num = gets.chomp.to_i

def count_down(number)
  if number == 0
    puts number
  else
    puts number
    count_down(number - 1)
  end

end

count_down(num)
