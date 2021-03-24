require_relative '../codebase_3'

describe Product do
    product = Product.new('Product Name', 120)
    describe "#discount" do
        context "Given a discount outside the valid range" do
            it "should return nil" do
                expect(product.discount(10)).to be_nil
            end
        end
        context "Given a valid discount" do
            it "should return the new price" do
                expect(product.discount(0.3)).to eq(84)
            end
        end
    end
    describe "#print" do
        it "display a formatted string showing the product's information" do
            expect do
                product.print
            end.to output("Product - Product Name - $120.00\n").to_stdout
        end
    end
end

describe Game do
    context "When initialized with a invalid platform" do
        it "should defualt to pc" do
            game = Game.new("Game Name", 10, "invalid platform")
            expect(game.platform).to eq(:pc)
        end
    end

    context "When turned to string" do
        it "should return the proper formatted information" do
            game = Game.new("Game Name", 10, :xbox)
            expect(game.to_s).to eq("Game - Game Name - $10.00-xbox")
        end
    end
end

describe Book do
    context "When initialized with a invalid category" do
        it "should defualt to scifi" do
            book = Book.new("Book Name", 10, "invalid category")
            expect(book.category).to eq(:scifi)
        end
    end

    context "When turned to string" do
        it "should return the proper formatted information" do
            book = Book.new("Book Name", 10, :romance)
            expect(book.to_s).to eq("Book - Book Name - $10.00-romance")
        end
    end
end