require "pry"
class CashRegister
  attr_accessor :total, :discount
  @total
  @discount
  @its = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = 1)
    @its << title
    @total = @total + (price * quantity)
    @total
  end

  def apply_discount

    if @discount != 0
      @total = @total - ((@total / 100)* (@discount) )
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @its
  end



end
