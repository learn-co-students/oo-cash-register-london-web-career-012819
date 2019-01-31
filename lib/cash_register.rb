class CashRegister

attr_accessor :discount, :last_transaction
attr_reader :total


  def initialize( discount = nil )
    @total = 0
    @discount = discount
    @all = []

  end

def total=(total)
  @total = @total + total
end

def add_item(title, price, quantity = 1)
@total = @total + (price * quantity)
@last_transaction = @total
i = 0
while i < quantity do
  @all << title
  i+= 1
end
end

def apply_discount
  if self.discount
    @total = @total - (@total * (discount/100.0))
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def items
@all
end

def void_last_transaction
@total -= @last_transaction
end

end
