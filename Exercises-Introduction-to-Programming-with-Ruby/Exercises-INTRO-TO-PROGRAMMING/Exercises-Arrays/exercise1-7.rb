#Exercise 1
puts "#Exercise 1"
arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.each do |num|
  if num == number
    puts "The number is in the arr!"
  end
end

#Exercise 2
puts "#Exercise 2"
arr1 = ["b", "a"]
arr1 = arr1.product(Array(1..3))
p arr1
p arr1.first.delete(arr1.first.last)

arr2 = ["b", "a"]
arr2 = arr2.product([Array(1..3)])
p arr2
puts '*' * 10
p arr2.first.delete(arr2.first.last)

#Exercise 3
puts "#Exercise 3"
arr3 = [["test", "hello", "world"],["example", "mem"]]
p arr3[1][0]

#Exercise 4
puts "#Exercise 4"
arr4 = [15, 7, 18, 5, 12, 8, 5, 1]

p arr4.index(5)

p arr4.index(1)

p arr4[5]

#Exercise 5
puts "#Exercise 5"
string = "Welcome to America!"
p a = string[6]
p b = string[11]
p c = string[19]

#Exercise 6
puts "#Exercise 6"
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
p names

#Exercise 7
puts "#Exercise 7"
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr