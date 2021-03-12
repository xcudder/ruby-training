require_relative 'product.rb'
require_relative '../modules/logging.rb'

class Book < Product
    include Logging

    def initialize(product_name = 'TBD', price = 0.00, category = '')
        valid_categories = [:adventure, :romance, :scifi, :horror]

        begin
            raise ArgumentError.new("Provided category \"#{category}\" Is invalid" ) unless valid_categories.include? category
            @type       = :Book
            @category   = category
            super(product_name, price)
        rescue StandardError => e
            log e.message, :ERROR
        end
    end

    def to_s
        "Name:#{@product_name.ljust(20)} Price:#{self.get_price.to_s.ljust(10)} Type:Book Category:#{@category}"
    end

end