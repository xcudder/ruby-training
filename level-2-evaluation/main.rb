require './classes/book.rb'
require './classes/game.rb'

require './modules/logging.rb'
require './modules/error-handler.rb'

# File for demo purposes only
# Just so the class functionalities for
# products, books and games are showcased

begin
    Logging.log("Debug message",:DEBUG)
    Logging.log("Info message",:INFO)
    Logging.log("Warning message",:WARN)
    Logging.log("Error message",:ERROR)
    Logging.log("Fatal error message",:FATAL)

    product1 = Book.new('Some book',    100.00, :adventure)
    product2 = Game.new('A PC game',    200.00, :PC)
    product3 = Book.new('Another book', 50.50,  :scifi)
    product4 = Game.new('Another game', 11.00,  :XBox)

    product1.show_info
    product2.show_info
    product3.show_info
    product4.show_info

    product3.apply_product_specific_discount 0.5
    product4.apply_product_specific_discount 1

    puts [
        :'===',
        'Applying a 0.5 discount to the third product and 1 to the fourth',
        'Applying 10% discount to books and 20% for games and showing products again',
        :'==='
    ]

    product1.set_discount_percentage_across_products_of_the_same_type 10
    product2.set_discount_percentage_across_products_of_the_same_type 20

    product1.show_info
    product2.show_info
    product3.show_info
    product4.show_info

rescue ArgumentError, NoMethodError => e
    ErrorHandler.rescue(e)
end