class Product
    attr_accessor :product_name, :price

    def initialize(product_name, price)
        @product_name   = product_name
        @price          = price
        @discount       = 0
    end

    def show_info
        if(type == "Book")
            puts "Name:#{@product_name.ljust(20)} Price:#{self.get_price.to_s.ljust(10)} Type:#{@type.ljust(10)} Category:#{@category}"
        end

        if(type == "Game")
            puts "Name:#{@product_name.ljust(20)} Price:#{self.get_price.to_s.ljust(10)} Type:#{@type.ljust(10)} Platform:#{@platform}"
        end
    end

    def apply_discount(discount)
        if(discount > 1)
            raise "Discount can only range from 0.0 to 1.0"
        end

        @discount = discount
        return @price - @discount
    end
end
