require "pry"
class CashRegister

attr_reader :title, :price
attr_accessor :total, :discount, :quantity, :discount

def initialize (discount = 0)
  @total = 0
  @discount = discount
  @items_array = []
end

def add_item(title, price, quantity = 0)
  @title = title

    if quantity > 0
    i = 1
    while i <= quantity
          @items_array << @title
          i += 1
    end
    else  @items_array << @title
    end

  @price = price
  @quantity = quantity
  if quantity > 0
    @total += (price * quantity)
  else
  @total += price
  end
end

def apply_discount
  if @discount != 0
  discounted = (@discount * @price) / 100
  @total -= discounted
  return "After the discount, the total comes to $#{@total}."
  else
  return "There is no discount to apply."
end
@total
end

def items
@items_array
end

def void_last_transaction
@total -= @price
end

end
