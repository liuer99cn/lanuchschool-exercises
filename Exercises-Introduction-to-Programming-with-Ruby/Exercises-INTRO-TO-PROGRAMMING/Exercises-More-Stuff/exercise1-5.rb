#Exercise 1
puts "Exercise 1"
def has_lab?(string)
  if string =~ /lab/
    puts "That's match!" + string
  else
    puts "Not match!"
  end
end
has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

#Exercise 2
puts "Exercise 2"

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }



