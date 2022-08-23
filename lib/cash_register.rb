require "pry"
class CashRegister
attr_accessor :total, :discount, :quantity, :items, :lastitem
    def initialize(discount = 0)
        @total = 0
@discount = discount
@items = []
@lastitem = 0
    end

    def add_item(title, price, quantity = 1)
        self.lastitem = price * quantity
self.total += self.lastitem
quantity.times do
    self.items << title
end

    end

def apply_discount
    if discount != 0
    float = self.discount.to_f
    decimal = float / 100
    discount = self.total * decimal
    self.total = self.total - discount
    "After the discount, the total comes to $#{self.total.to_i}."
    else
        "There is no discount to apply."
    end

end

def void_last_transaction
self.total -= self.lastitem

end

end
