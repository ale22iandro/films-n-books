class Film < Product
  def show_price
    "Фильм #{@title} стоит #{@price} рублей"
  end

end

