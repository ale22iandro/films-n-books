class Product
  def initialize(title="", price=0, amount=0)
    @price = price
    @amount = amount
    @title = title
  end
  def self.product_types
    [Film, Book]
  end

end
