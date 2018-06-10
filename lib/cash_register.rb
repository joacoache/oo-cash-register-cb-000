class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @array = []
    @last = 0
  end

  def add_item(title, price, quatity = 1)
    @total += price * quatity
    quatity.times do
      @array << title
    end
    @last = price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @array
  end

  def void_last_transaction
    @array.pop
    @total - @last
  end

end
