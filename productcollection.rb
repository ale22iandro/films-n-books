class ProductCollection
  def initialize
    @products = []
  end
  def add_product(new_product)
    @products << new_product
  end
  def to_a

    @products.each do |product|
      product
    end
  end
end
