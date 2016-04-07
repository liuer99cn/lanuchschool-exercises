#Exercise 1
puts "Exercise 1"
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|i| puts i}

#Exercise 2
puts "Exercise 2"
arr.each {|i| puts i if i > 5}

#Exercise 3
puts "Exercise 3"
new_array = arr.select { |number| number % 2 != 0 }
p new_array

#Exercise 4
puts "Exercise 4"
arr << 11
arr.unshift(0)
p arr

#Exercise 5
puts "Exercise 5"
arr.pop
arr << 3
p arr

#Exercise 6
puts "Exercise 6"
p arr.uniq

#Exercise 7
puts "Exercise 7"

#Exercise 8
puts "Exercise 8"
hash = {:name => 'bob'}
p hash
hash = {name: 'bob'}
p hash

#Exercise 9
puts "Exercise 9"
h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
p h[:b]
#2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h
#3. Remove all key:value pairs whose value is less than 3.5
p h.delete_if {|k, v| v < 3.5}

#Exercise 10
puts "Exercise 10"
# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

#Exercise 12
puts "Exercise 12"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
p contacts["Joe Smith"][:email] = contact_data[0][0]
p contacts["Joe Smith"][:address] = contact_data[0][1]
p contacts["Joe Smith"][:phone] = contact_data[0][2]
p contacts["Sally Johnson"][:email] = contact_data[1][0]
p contacts["Sally Johnson"][:address] = contact_data[1][1]
p contacts["Sally Johnson"][:phone] = contact_data[1][2]
p contacts

#Exercise 13
puts "Exercise 13"
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#Exercise 14
puts "Exercise 14"
contacts1 = {"Joe Smith" => {}}
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts1 = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts1.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts1

#Exercise 15
puts "Exercise 15"
arr1 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr1.delete_if { |word| word.start_with?("s") }

p arr1.delete_if { |word| word.start_with?("s", "w") }

#Exercise 16
puts "Exercise 16"

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |pairs| pairs.split }
a = a.flatten
p a

#Exercise 17
puts "Exercise 17"
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end









