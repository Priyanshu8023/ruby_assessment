class Person
  attr_accessor :name, :age

  def initialize(name,age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, I am #{name} and I am #{age}"
  end

end

person = Person.new("Alice",25)

puts person.introduce