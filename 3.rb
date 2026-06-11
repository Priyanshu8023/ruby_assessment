module Greetable
  def greet
    "Hello, my name is #{@name}"
  end
end

class Person
  include Greetable
    def initialize(name)
      @name = name
    end
end

class Employee
  include Greetable
  def initialize(name)
    @name = name
  end
end

person =Person.new("Priyanshu")
employee=Employee.new("Pratik")

puts person.greet
puts employee.greet

