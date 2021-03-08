require_relative 'product.rb'

class Game < Product

    def initialize(product_name = 'TBD', price = 0.00, platform = '')
        valid_platforms = [:PS4, :XBox, :PC]
        raise 'Invalid platform' unless valid_platforms.include? platform

        @type       = :Game
        @platform   = platform
        super(product_name, price)
    end

    def to_s
        "Name:#{@product_name.ljust(20)} Price:#{self.get_price.to_s.ljust(10)} Type:Game Platform:#{@platform}"
    end

end
