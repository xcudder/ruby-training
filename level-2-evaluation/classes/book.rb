require_relative 'product.rb'

class Book < Product
    attr_reader :type, :category

    def initialize(product_name = 'TBD', price = 0.00, category = 'undefined')
        @type       = "Book"
        @category   = category
        super(product_name, price)
    end
end