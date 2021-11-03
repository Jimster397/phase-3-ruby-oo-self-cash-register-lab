# require 'pry'
class CashRegister

    attr_accessor :discount, :total, :lastprice
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @array = []
        
end

def add_item(title, price, quantity = 1)
    quantity.times { @array << title} 
    @lastprice = price * quantity
    @total = @total + price * quantity     
end

def apply_discount
    if(discount > 0)
    @total = @total - (@total * discount / 100)
    "After the discount, the total comes to $#{@total}."
    else
        "There is no discount to apply."
        end
    end
    def items
        @array
    end
    
    def void_last_transaction
        @total = @total - @lastprice 
    end

end

# justin = CashRegister.new 
# justin.total
# binding.pry