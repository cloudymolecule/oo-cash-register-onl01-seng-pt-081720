require "pry"
class CashRegister
  attr_accessor :total, :discount
  @total
  @discount

  def initialize(total = 0, discount = 20)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)

  end

  def apply_discount

      @total = @total - ((@total / 100)* (@discount) )
      return "After the discount, the total comes to $#{@total}."
  end
end
