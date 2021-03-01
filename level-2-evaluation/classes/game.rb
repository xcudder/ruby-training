require_relative 'product.rb'

class Game < Product
    attr_reader :type, :platform

    def initialize(product_name = 'TBD', price = 0.00, platform = 'undefined')
        @type           = "Game"
        @platform       = platform
        @@type_discount = 0
        super(product_name, price)
    end

    def get_price
        final_price = @price

        if(@discount)
            final_price = final_price - @discount
        end

        if(@@type_discount > 0)
            final_price = final_price / 100 * (100 - @@type_discount)
        end

        return final_price.round(2)
    end

    def set_discount_percentage_across_products_of_the_same_type(percentage)
        @@type_discount = percentage
    end
end
