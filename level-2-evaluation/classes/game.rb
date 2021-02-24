require_relative 'product.rb'

class Game < Product
    attr_reader :type, :platform

    def initialize(product_name = 'TBD', price = 0.00, platform = 'undefined')
        @type       = "Game"
        @platform   = platform
        super(product_name, price)
    end
end