require './classes/book.rb'
require './classes/game.rb'

product1 = Book.new("Onze Minutos",  15.00,  "Romance")
product2 = Game.new
product3 = Book.new
product4 = Game.new("Mass Effect 3", 120.00, "PC")

product1.show_info
product2.show_info
product3.show_info
product4.show_info

puts product1.apply_discount 0.5
puts product4.apply_discount 1