require './product.rb'
require './book.rb'
require './film.rb'
a = Film.new("Leon",249, 10)
film = Film.from_file('./data/film/01.txt')
book = Book.from_file('./data/books/01.txt')
puts film
puts book
