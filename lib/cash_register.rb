class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount=nil)
    @total = 0
    if discount
      @discount = discount
    end
    @items = []
  end

  def add_item(title, price, qty=nil)
    if qty
      self.total += (price*qty)
      self.last = (price*qty)
      qty.times {self.items << title}

    else
      self.total += price
      self.items << title
      self.last = price
    end
  end

  def apply_discount
    if @discount
      self.total -= self.total*(@discount.to_f/100)
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last
  end
end
