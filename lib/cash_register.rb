require 'pry'

class CashRegister

  attr_accessor :total, :items, :last_transaction, :discount

  def initialize(discount = 0.00)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @total += price
      @items << title
    end
    @last_transaction = price*quantity
  end

  def apply_discount
    if @discount > 0
      sum = total/100 * @discount
      @total = total - sum
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
     @total -= @last_transaction
  end
end
