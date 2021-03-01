require_relative 'product.rb'

class Book < Product
    attr_reader :type, :category

    def initialize(product_name = 'TBD', price = 0.00, category = 'undefined')
        @type           = "Book"
        @category       = category
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

        final_price.round(2)
    end

    def set_discount_percentage_across_products_of_the_same_type(percentage)
        @@type_discount = percentage
    end
end
