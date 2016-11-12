require 'pry'

def increment(number)
  if block_given?
    #binding.pry
    yield number+1
  else
    number + 2
  end
end

increment(6) do |num|
  p num
end

def compare(str)
  puts "Before: #{str}"
  after = yield(str)
  "After: #{after}"
end

p compare("hello") {|word| word.upcase}

def time_it
  time_before = Time.now
  puts "Host time"
  time_after= Time.now

  puts "It took #{time_after - time_before} seconds."
end

p time_it

def each(array)
  counter = 0

  while counter < array.size
    yield(array[counter])                           # yield to the block, passing in the current element to the block
    counter += 1
  end

  array                                             # returns the `array` parameter, similar in spirit to how `Array#each` returns the caller
end

def select(array)
  counter = 0
  result = []
  while counter < array.size
    #binding.pry
    current_element = array[counter]
    result << current_element if yield(current_element)
    counter += 1
  end

  result
end

array = [1, 2, 3, 4, 5]
#select(array) { |num| puts num }
p select(array) { |num| num + 1 }

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    if todo.class == Todo
      @todos << todo
    else
      puts "Can only add Todo objects"
    end
  end

  def size
    return @todos.size
  end

  def first
    return @todos.first
  end

  def last
    return @todos.last
  end

  def item_at(num)
    @todos.fetch(num)
  end

  def mark_done_at(num)
    if num <= @todos.size
      @todos[num].done = true
    else
      puts "IndexError"
    end
  end

  def mark_undone_at(num)
    if num <= @todos.size
      @todos[num].done = false
    else
      puts "IndexError"
    end
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def each
    counter = 0
    yield
    while counter < @todos.size
      puts @todos[counter]
      counter += 1
    end
  end
  end

  def remove_at(num)
    if num <= @todos.size
      @todos.delete_at(num)
    else
      puts "IndexError"
    end
  end

  def to_s
    counter = 0
    puts "--- #{@title} ---"
    while counter < @todos.size
      puts @todos[counter]
      counter += 1
    end

    def done?
      @todos.all? { |todo| todo.done? }
    end


end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")
list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
list.add(todo3)                 # adds todo3 to end of list, returns list
list.add(1)                     # raises TypeError with message "Can only add Todo objects"
p list


list.size                       # returns 3
#
# # first
list.first                      # returns todo1, which is the first item in the list
#
# # last
list.last

puts todo1
puts todo2
puts todo3                     # returns todo3, which is the last item in the list
#
# # ---- Retrieving an item in the list ----
#
#list.item_at                    # raises ArgumentError
p list.item_at(1)                 # returns 2nd item in list (zero based index)
#list.item_at(100)

# mark_done_at
#list.mark_done_at               # raises ArgumentError
p list.mark_done_at(1)            # marks the 2nd item as done
p list
list.mark_done_at(100)          # raises IndexError

list.each do |todo|
  puts todo                   # calls Todo#to_s
end
