require './classes/book.rb'
require './classes/game.rb'

# File for demo purposes only
# Just so the class functionalities for
# products, books and games are showcased

product1 = Book.new
product2 = Book.new("Onze Minutos",  15.00,  "Romance")
product3 = Game.new
product4 = Game.new("Mass Effect 3", 120.00, "PC")
product5 = Book.new("Sophie's World",  30.00,  "Romance")
product6 = Game.new("Fallout",  9.00,  "Romance")

product1.show_info
product2.show_info
product3.show_info
product4.show_info
product5.show_info
product6.show_info

product2.apply_discount 0.5
product4.apply_discount 1

puts [
    "===",
    "Applying 50% discount to books and 33% for games and showing products again",
    "==="
]

product1.set_discount_percentage_across_products_of_the_same_type 50
product3.set_discount_percentage_across_products_of_the_same_type 33

product1.show_info
product2.show_info
product3.show_info
product4.show_info
product5.show_info
product6.show_info
