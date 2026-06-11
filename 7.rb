class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << format_book(book)
  end

  def remove_book(book)
    @books.delete(format_book(book))
  end

  def list_books
    if @books.empty?
      puts "No books in the library."
    else
      puts "Books in the library:"
      @books.each_with_index do |book, index|
        puts "#{index + 1}. #{book}"
      end
    end
  end

  private

  def format_book(book)
    book.strip.capitalize
  end
end

library = Library.new

library.add_book("harry potter")
library.add_book("the hobbit")
library.add_book("ruby programming")

library.list_books

library.remove_book("the hobbit")

puts "\nAfter removing a book:"
library.list_books