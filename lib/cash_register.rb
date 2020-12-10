
class CashRegister
    attr_accessor :total, :items, :discount, :last_item

    def initialize(discount=0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do 
          items << title
        end
        self.last_item = price * quantity
      end

    def apply_discount
        if discount != 0
            @total = (total * (100.00 - discount.to_f)/100).to_i
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction 
        @total = @total - @last_item
    end



end

