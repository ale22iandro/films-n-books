require './product.rb'
require './book.rb'
require './film.rb'
require './productcollection.rb'
collection = ProductCollection.new
loop do
puts "Хотите что-то добавить?"

Product.product_types.each_with_index do |type, index|
  puts "#{index + 1}.#{type}"
end

user_choise = gets.to_i - 1
type = Product.product_types[user_choise]

new_params={}

new_product = type.new

puts "Title of #{type}?"
new_params["title"] = gets.chomp
puts "Price?"
new_params["price"] = gets.to_i
puts "Amount?"
new_params["amount"] = gets.to_i

new_product.show_params.each do |param|

  puts "#{param}?"

  new_params[param]=gets.chomp

end

new_product.add_params(new_params)
collection.add_product(new_product)
puts collection.to_a
# puts new_product
end