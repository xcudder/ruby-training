class Product

    @@type_discounts = {}

    def initialize(product_name, price)
        @product_name   = product_name
        @price          = price
        @discount       = 0
    end

    def get_price
        raise 'Method not implemented'
    end

    def show_info
        raise 'Method not implemented'
    end

    def apply_product_specific_discount(discount)
        raise 'Discount can only range from 0.0 to 1.0' if discount > 1 or discount < 0

        @discount = discount
        return @price - @discount
    end

    def set_discount_percentage_across_products_of_the_same_type(percentage)
       @@type_discounts[@type] = percentage
    end

    def get_price
        final_price = @price

        final_price = final_price - @discount

        if(@@type_discounts[@type])
            final_price = final_price / 100 * (100 - @@type_discounts[@type])
        end

        return final_price.round(2)
    end

    def show_info
        puts self
    end
end
