class Product
    attr_accessor :product_name, :price

    def initialize(product_name, price)
        @product_name   = product_name
        @price          = price
    end

    def show_info
        if(type == "Book")
            puts "Name:#{@product_name} Price:#{@price} Type:#{@type} Category:#{@category}"
        end

        if(type == "Game")
            puts "Name:#{@product_name} Price:#{@price} Type:#{@type} Platform:#{@platform}"
        end
    end

    def apply_discount(discount)
        return @price = @price - discount
    end
end