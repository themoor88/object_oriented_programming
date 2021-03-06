# States are stored in instance variables.
# The domain is the problem space. Converts really well to code.

# Rover
# ---state---
# point (x,y)
# direction

# ---behaviour---
# move
# turn left
# turn right

# Domain Modelling
# 1. What are the things? ===> Classes
# 2. How do I describe them? ===> State/Instance Variables
# 3. What behaviours do they have? ===> Instance Methods

class Rover
  def initialize(init_x, init_y, init_direction)
    @x = init_x
    @y = init_y
    @direction = init_direction
  end

  def read_instructions(input1, input2, input3, input4, input5)

  end

  def move_forward
    if @direction == "N"
      @y += 1
    end
    if @direction == "E"
      @x += 1
    end
    if @direction == "S"
      @y -= 1
    end
    if @direction == "W"
      @x -= 1
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    else
      puts ""
    end
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    end
  end

  def movement(input)
    if input == "L"
      then turn_left
    elsif input == "R"
      then turn_right
    elsif input == "M"
      then move_forward
    else puts "Your input, #{input} is not valid. Please use the letters L for left, R for right or M for moving forward."
    end
  end

  def to_s
  end
end

class Plateau
  def initialize (max_x, max_y)
    @min_x = 0
    @min_y = 0
    @max_x = gets.chomp.to_i
    @max_y = gets.chomp.to_i
  end
end

rover1 = Rover.new(1, 2, "N")
rover2 = Rover.new(1, 2, "N")
rover1.@x

# puts "Hello. This is the Mars Rover Program."
# puts "How wide would you like the plateau to be?"
# plateau_width = gets.chomp.to_i

# puts "How long would you like the plateau to be?"
# plateau_length = gets.chomp.to_i

# puts "Where would you like the first rover to start on the plateau? Format : x, y, compass direction."
# rover1_x = gets.chomp.split("")

# puts "Where would you like the second rover to start on the plateau? Format : x, y, compass direction."
# rover1_x = gets.chomp.split("")

# puts "Move the first rover using the letters L for Left, M for Move Forward and R for Right."
# rover1_x = gets.chomp.upcase.split("")

puts "Hello"
input = gets.chomp.upcase.split("")

counter = 0
while counter <= input.length - 1
  rover1.movement(input[counter])
  counter += 1
end
puts rover1



