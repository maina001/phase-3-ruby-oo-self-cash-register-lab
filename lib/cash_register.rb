lass CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction = price * quantity
    self.total += self.last_transaction
    quantity.times do
      self.items << title
    end
  end