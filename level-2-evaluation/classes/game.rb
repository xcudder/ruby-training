require_relative 'product.rb'
require_relative '../modules/logging.rb'

class Game < Product
    include Logging

    def initialize(product_name = 'TBD', price = 0.00, platform = '')
        valid_platforms = [:PS4, :XBox, :PC]

        begin
            raise ArgumentError.new("Provided platform \"#{platform}\" Is invalid") unless valid_platforms.include? platform
            @type       = :Game
            @platform   = platform
            super(product_name, price)
        rescue StandardError => e
            log e.message, :ERROR
        end
    end

    def to_s
        "Name:#{@product_name.ljust(20)} Price:#{self.get_price.to_s.ljust(10)} Type:Game Platform:#{@platform}"
    end

end
