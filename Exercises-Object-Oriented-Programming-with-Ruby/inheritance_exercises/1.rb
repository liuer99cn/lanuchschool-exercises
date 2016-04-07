class Vehicle
  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0

  end

  def speed_up(number)
    @current_speed += number
    puts "You push speed up ,and the speed is #{number} mph now!"
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and the speed is #{number}mph now!"
  end

  def current_speed
    puts "You are now going #{@current_speed}mph now!"
  end

  def shut_down
    @current_speed = 0
    puts "Let's pull it over the road!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas!"
  end

  def spray_paint(color)
    self.color = color
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOOR = 4

  def to_s
    puts "My car is #{color} ,#{year} and #{model} "
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOOR = 2

  def to_s
    puts "My truck is #{color} ,#{year} and #{model} "
  end

end

car = MyCar.new('1989', 'Audi A4L', 'black')

truck = MyTruck.new('1995', 'Toyota Funda', 'white')
puts car
puts truck

