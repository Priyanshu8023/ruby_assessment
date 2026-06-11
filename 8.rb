people = [
  {name:"Alice", age:25 },
  {name: "Bob", age:30}
]

names = people.map do |person|
  person[:name]
end

puts names.inspect

