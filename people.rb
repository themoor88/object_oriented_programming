# Exercise 1: Class Time

# Define the super class Person. We must use initialize so it can be used for instances.
# Instance variable @name defined within the class to be used for other instances.
class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}."
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an object."
  end
end

instructor = Instructor.new("Chris") # Instances of the class Person.
student = Student.new("Cristina") # Instances of the class Person.

instructor.greeting
student.greeting

instructor.teach
student.learn

student.teach