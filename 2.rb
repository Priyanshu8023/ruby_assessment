class User 
  attr_accessor :name, :email
  attr_reader :introduce

  def initialize(id,name,email,password)
    @id=id
    @name=name
    @email=email
    @password = password
  end
end

user=User.new(101,"Priyanshu","priyanshukumar@gmail.com","secret123")

puts user.name
puts user.email

user.name="Aditya"
user.email="aditya@gmai.com"

begin
  user.id = 202
rescue NoMethodError => e
  puts e.message
end

begin 
  puts user.password
rescue NoMethodError => e
  puts e.message
end

begin
  user.password="password"
rescue NoMethodError => e
  puts e.message
end
