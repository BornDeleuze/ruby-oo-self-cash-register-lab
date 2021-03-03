require 'pry'
class CashRegister
   attr_accessor :total, :discount, :item, :last_transaction
    # items = []

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end
    
    def add_item(name,price,quantity=1)
        @total+=price*quantity
        quantity.times do
        @items << name
        end
        @last_transaction = price*quantity

    end

    def apply_discount
        if discount != 0  
        @total = total-total*discount/100
        @total
        "After the discount, the total comes to $#{total}."
        else 
            "There is no discount to apply."    
        end
    end

    def items 
        @items
    end
    def void_last_transaction
        @total= total - last_transaction
    end

end
# cash_register = CashRegister.new
# binding.pry