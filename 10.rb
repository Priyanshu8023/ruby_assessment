module Taggable
  def add_tag(tag)
    @tags ||= []
    @tags << tag
  end

  def tags
    @tags ||= []
  end
end

class Article
  include Taggable

  attr_reader :title

  def initialize(title)
    @title = title
  end
end

article1 = Article.new("Sports")
article2 = Article.new("Movies")

article1.add_tag("cricket")
article1.add_tag("football")

article2.add_tag("action")
article2.add_tag("comedy")

puts "#{article1.title} tags: #{article1.tags.inspect}"
puts "#{article2.title} tags: #{article2.tags.inspect}"