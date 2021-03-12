require_relative '../modules/logging.rb'

class Product
    include Logging

    @@type_discounts = {}

    def initialize(product_name, price)
        begin
            @product_name   = product_name
            @price          = price
            @discount       = 0
        rescue StandardError => e
            log e.message, :ERROR
        end
    end

    def get_price
        raise NoMethodError.new('Method not implemented at the abstract class level')
    end

    def show_info
        raise NoMethodError.new('Method not implemented at the abstract class level')
    end

    def apply_product_specific_discount(discount)
        begin
            raise ArgumentError.new('Discount can only range from 0.0 to 1.0') if discount > 1 or discount < 0
            @discount = discount
            return @price - @discount
        rescue StandardError => e
            log e.message, :ERROR
        end
    end

    def set_discount_percentage_across_products_of_the_same_type(percentage)
       @@type_discounts[@type] = percentage
    end

    def get_price
        begin
            final_price = @price
            final_price = final_price - @discount
            final_price = final_price / 100 * (100 - @@type_discounts[@type]) if @@type_discounts[@type]
            return final_price.round(2)
        rescue StandardError => e
            log e.message, :ERROR
        end
    end

    def show_info
        puts self
    end
end
