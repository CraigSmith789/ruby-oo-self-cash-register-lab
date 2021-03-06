require 'pry'
class CashRegister
    attr_accessor :discount, :total, :price, :quantity, :last_transaction
    

    def initialize(discount=0)
    
        @total = 0
        @discount = discount
        @all_items = []
       
    end

    def add_item(title,price, quantity = 1)
        
        self.total += price * quantity
        @all_items.concat([title] * quantity)
        self.last_transaction = price * quantity              
        

    end

        def apply_discount 
            if  discount == 0 
                return "There is no discount to apply." 
            else
                self.total = self.total - self.total * discount/100
                return "After the discount, the total comes to $#{self.total}."
            end
        end
        def items
            @all_items             

        end
        def void_last_transaction
            self.total = self.total - self.last_transaction
            
        end

end

