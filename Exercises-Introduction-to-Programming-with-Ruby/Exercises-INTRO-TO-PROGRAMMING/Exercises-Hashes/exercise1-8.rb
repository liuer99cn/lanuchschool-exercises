#Exercise 1
puts "#Exercise 1"
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
}

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr

#Exercise 2
puts "#Exercise 2"
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat
puts weight
puts cat.merge!(weight)
puts cat
puts weight

#Exercise 3
puts "#Exercise 3"

family.each_key { |key| puts key }
family.each_value { |value| puts value }
family.each { |key, value| puts "The opposite of #{key} is #{value}" }

#Exercise 4
puts "#Exercise 4"
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]

#Exercise 5
puts "#Exercise 5"
opposites = {positive: "negative", up: "down", right: "left"}

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

#Exercise 6
puts "#Exercise 6"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end