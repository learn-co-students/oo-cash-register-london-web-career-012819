
require "pry"
class CashRegister

  attr_accessor :total

  @last_price_added = 0

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @titles = []
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)

    (1..quantity).each do |num|
      @titles << title
    end

    @last_price_added = price

    ## vs? self.total
  end

  def apply_discount
    if self.discount
      self.total = self.total * ((100- self.discount)/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @titles
  end

  def void_last_transaction
    self.total -= @last_price_added
  end
end
