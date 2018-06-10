class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quatity = 1)
    @total += price * quatity
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total = @total * 100 / @discount
      puts "After the discount, the total comes to $#{discount}."
    end
  end
end
