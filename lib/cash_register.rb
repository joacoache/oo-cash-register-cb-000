class CashRegister
  attr_accessor :total, :discount

  def cash_register
    total = self.new
    total.total = 0
  end

  def cash_register_with_discount(discount)
    total = self.new
    total.total = 0
    @discount = discount
  end

end
