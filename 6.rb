module Discountable
  def discounted_price(percent)
    @price - (@price*percent/100.0)
  end
end

class Product 
  include Discountable
  attr_accessor :price

  def initialize(price)
    @price = price
  end
end

product = Product.new(100)

puts "Original Price: #{product.price}"
puts "Price after 20% discount: #{product.discounted_price(20)}"
puts "Price after 35% discount: #{product.discounted_price(35)}"

